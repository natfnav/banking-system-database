--function for trigger enforce_account_totality, Professor Topsakal said we could put a trigger function in SP.txt to fulfil an entry.  Fulfils: Function, Processes Data, Conditional Statements
--Enforces totality in the owns association table. Raises exception if totality not acceptable.
CREATE OR REPLACE FUNCTION check_account_totality()
RETURNS TRIGGER AS $$
DECLARE 
        cnt INTEGER;
BEGIN
        SELECT COUNT(*) INTO cnt FROM owns WHERE accountID = OLD.accountID;
        IF cnt = 1 THEN
                RAISE EXCEPTION 'customer table not total.';
        ELSE
                UPDATE owns
                SET count = count - 1 WHERE accountID = OLD.accountID;
        END IF;
        RETURN NULL;
END;
$$ LANGUAGE plpgsql;


--Updates row in cards using accountid. Used if person loses their credit card and needs a new one.  Fulfils: DataRetrieval/Update
CREATE OR REPLACE PROCEDURE update_cards (
accountid IN cards.accountid%TYPE,
cardnumber IN cards.cardnumber%TYPE, 
verifycode IN cards.verifycode%TYPE ) 
AS $$
BEGIN 
UPDATE cards 
SET cardnumber = $2,
verifycode = $3 
WHERE cards.accountid = $1; 
RAISE NOTICE 'Account ID: % has been updated.', $1;
END; 
$$ LANGUAGE plpgsql;


--Process the transaction indicated by the TransactionID passed as TID, and uses the OK int to indicate success/fail (1/0) of the processing.  Accounts for Withdrawal transactions requiring subtracting the amount instead of adding.  Fulfils: Passing and Receiving Data, Conditional Statements
CREATE OR REPLACE PROCEDURE ProcessTransaction(
        TID int,
        OUT OK int
)
LANGUAGE plpgsql
AS $$
DECLARE 
        change int;
        aid int;
        t_type VARCHAR(100);
BEGIN
        SELECT 0 into OK;
        SELECT AccountID, Amount, TransactionType
        INTO aid, change, t_type
        FROM transactions
        WHERE TransactionID = TID;


        IF t_type ILIKE 'Withdrawal' THEN change = -change;
        END IF;
        
        UPDATE accounts
        SET balance = balance + change
        WHERE accountid = aid;
        
        SELECT 1 INTO OK;
END $$;


-- Get the total balance of all acounts at branch BID, returned or given to second variable in argument.  Fulfils: Passing and Receiving Data
CREATE OR REPLACE PROCEDURE TotalBranchBalance(
        BID int,
        OUT bresult DECIMAL(12,2)
)
LANGUAGE plpgsql
AS $$
BEGIN
        SELECT SUM(balance) INTO bresult
        FROM accounts
        WHERE branchid = BID;
END $$;