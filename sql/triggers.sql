--Enforces totality in the owns association table. Accounts must have at least one relationship in owns.  Uses function declared in SP.txt.  Fulfils: Delete, For Each Row


CREATE TRIGGER enforce_account_totality
BEFORE DELETE ON owns
FOR EACH ROW
EXECUTE FUNCTION check_account_totality();


-- update when last maintenance occurred on an ATM,
-- assumption is that the withdrawal limit changes with every maintenance.  Fulfils: Update, For Each Row
CREATE OR REPLACE FUNCTION update_last_maintenance()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.WithdrawalLimit IS DISTINCT FROM OLD.WithdrawalLimit THEN
        NEW.LastMaintenance := CURRENT_DATE;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER update_maintenance_trigger
BEFORE UPDATE ON ATM
FOR EACH ROW
WHEN (OLD.WithdrawalLimit iS DISTINCT FROM NEW.WithdrawalLimit)
EXECUTE FUNCTION update_last_maintenance();




--Process the transaction recently inserted.  Fulfils: Update, For Each Row
CREATE OR REPLACE FUNCTION ProcessTransFunction()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE 
        change int;
BEGIN
        SELECT NEW.amount INTO change;
        
        IF NEW.TransactionType ILIKE 'Withdrawal' THEN change = -change;
        END IF;
        
        UPDATE accounts
        SET balance = balance + change
        WHERE accountid = NEW.accountid;


        RETURN NULL;
END $$;


CREATE TRIGGER transaction_trigger
AFTER INSERT ON transactions
FOR EACH ROW
EXECUTE FUNCTION ProcessTransFunction();




--On updating an account balance (perhaps from processing a transaction), check if account balance would become negative and raise exception if it would.  Fulfils Update, For Each Row
CREATE OR REPLACE FUNCTION check_negative_balance()
RETURNS TRIGGER AS $$
BEGIN
    IF (SELECT NEW.balance FROM Accounts WHERE AccountID = NEW.AccountID) < 0 THEN
        RAISE EXCEPTION 'Account % will have negative balance after update.', NEW.AccountID;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER check_balance_trigger
BEFORE UPDATE ON Accounts
FOR EACH ROW
EXECUTE FUNCTION check_negative_balance();