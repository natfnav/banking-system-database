namespace Team11_Bank_Database
{
    partial class QueryMenu
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            TableView = new DataGridView();
            CustomersButton = new Button();
            BranchesButton = new Button();
            EmployeesButton = new Button();
            ManagersButton = new Button();
            CardsButton = new Button();
            OwnsButton = new Button();
            AccountsButton = new Button();
            TellersButton = new Button();
            ATMButton = new Button();
            LoanPaymentsButton = new Button();
            TransactionsButton = new Button();
            LoansButton = new Button();
            ((System.ComponentModel.ISupportInitialize)TableView).BeginInit();
            SuspendLayout();
            // 
            // TableView
            // 
            TableView.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            TableView.Location = new Point(12, 12);
            TableView.Name = "TableView";
            TableView.RowHeadersWidth = 51;
            TableView.Size = new Size(960, 264);
            TableView.TabIndex = 1;
            // 
            // CustomersButton
            // 
            CustomersButton.Location = new Point(12, 330);
            CustomersButton.Name = "CustomersButton";
            CustomersButton.Size = new Size(94, 29);
            CustomersButton.TabIndex = 2;
            CustomersButton.Text = "Customers";
            CustomersButton.UseVisualStyleBackColor = true;
            CustomersButton.Click += CustomersButton_Click;
            // 
            // BranchesButton
            // 
            BranchesButton.Location = new Point(286, 330);
            BranchesButton.Name = "BranchesButton";
            BranchesButton.Size = new Size(94, 29);
            BranchesButton.TabIndex = 3;
            BranchesButton.Text = "Branches";
            BranchesButton.UseVisualStyleBackColor = true;
            BranchesButton.Click += BranchesButton_Click;
            // 
            // EmployeesButton
            // 
            EmployeesButton.Location = new Point(590, 330);
            EmployeesButton.Name = "EmployeesButton";
            EmployeesButton.Size = new Size(94, 29);
            EmployeesButton.TabIndex = 4;
            EmployeesButton.Text = "Employees";
            EmployeesButton.UseVisualStyleBackColor = true;
            EmployeesButton.Click += EmployeesButton_Click;
            // 
            // ManagersButton
            // 
            ManagersButton.Location = new Point(878, 330);
            ManagersButton.Name = "ManagersButton";
            ManagersButton.Size = new Size(94, 29);
            ManagersButton.TabIndex = 5;
            ManagersButton.Text = "Managers";
            ManagersButton.UseVisualStyleBackColor = true;
            ManagersButton.Click += ManagersButton_Click;
            // 
            // CardsButton
            // 
            CardsButton.Location = new Point(878, 423);
            CardsButton.Name = "CardsButton";
            CardsButton.RightToLeft = RightToLeft.No;
            CardsButton.Size = new Size(94, 29);
            CardsButton.TabIndex = 9;
            CardsButton.Text = "Cards";
            CardsButton.UseVisualStyleBackColor = true;
            CardsButton.Click += CardsButton_Click;
            // 
            // OwnsButton
            // 
            OwnsButton.Location = new Point(590, 423);
            OwnsButton.Name = "OwnsButton";
            OwnsButton.Size = new Size(94, 29);
            OwnsButton.TabIndex = 8;
            OwnsButton.Text = "Owns";
            OwnsButton.UseVisualStyleBackColor = true;
            OwnsButton.Click += OwnsButton_Click;
            // 
            // AccountsButton
            // 
            AccountsButton.Location = new Point(286, 423);
            AccountsButton.Name = "AccountsButton";
            AccountsButton.Size = new Size(94, 29);
            AccountsButton.TabIndex = 7;
            AccountsButton.Text = "Accounts";
            AccountsButton.UseVisualStyleBackColor = true;
            AccountsButton.Click += AccountsButton_Click;
            // 
            // TellersButton
            // 
            TellersButton.Location = new Point(12, 423);
            TellersButton.Name = "TellersButton";
            TellersButton.Size = new Size(94, 29);
            TellersButton.TabIndex = 6;
            TellersButton.Text = "Tellers";
            TellersButton.UseVisualStyleBackColor = true;
            TellersButton.Click += TellersButton_Click;
            // 
            // ATMButton
            // 
            ATMButton.Location = new Point(878, 522);
            ATMButton.Name = "ATMButton";
            ATMButton.Size = new Size(94, 29);
            ATMButton.TabIndex = 13;
            ATMButton.Text = "ATM";
            ATMButton.UseVisualStyleBackColor = true;
            ATMButton.Click += ATMButton_Click;
            // 
            // LoanPaymentsButton
            // 
            LoanPaymentsButton.Location = new Point(573, 522);
            LoanPaymentsButton.Name = "LoanPaymentsButton";
            LoanPaymentsButton.Size = new Size(128, 29);
            LoanPaymentsButton.TabIndex = 12;
            LoanPaymentsButton.Text = "LoanPayments";
            LoanPaymentsButton.UseVisualStyleBackColor = true;
            LoanPaymentsButton.Click += LoanPaymentsButton_Click;
            // 
            // TransactionsButton
            // 
            TransactionsButton.Location = new Point(286, 522);
            TransactionsButton.Name = "TransactionsButton";
            TransactionsButton.Size = new Size(94, 29);
            TransactionsButton.TabIndex = 11;
            TransactionsButton.Text = "Transactions";
            TransactionsButton.UseVisualStyleBackColor = true;
            TransactionsButton.Click += TransactionsButton_Click;
            // 
            // LoansButton
            // 
            LoansButton.Location = new Point(12, 522);
            LoansButton.Name = "LoansButton";
            LoansButton.Size = new Size(94, 29);
            LoansButton.TabIndex = 10;
            LoansButton.Text = "Loans";
            LoansButton.UseVisualStyleBackColor = true;
            LoansButton.Click += LoansButton_Click;
            // 
            // QueryMenu
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1004, 593);
            Controls.Add(ATMButton);
            Controls.Add(LoanPaymentsButton);
            Controls.Add(TransactionsButton);
            Controls.Add(LoansButton);
            Controls.Add(CardsButton);
            Controls.Add(OwnsButton);
            Controls.Add(AccountsButton);
            Controls.Add(TellersButton);
            Controls.Add(ManagersButton);
            Controls.Add(EmployeesButton);
            Controls.Add(BranchesButton);
            Controls.Add(CustomersButton);
            Controls.Add(TableView);
            Name = "QueryMenu";
            Text = "QueryMenu";
            Load += QueryMenu_Load;
            ((System.ComponentModel.ISupportInitialize)TableView).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView TableView;
        private Button CustomersButton;
        private Button BranchesButton;
        private Button EmployeesButton;
        private Button ManagersButton;
        private Button CardsButton;
        private Button OwnsButton;
        private Button AccountsButton;
        private Button TellersButton;
        private Button ATMButton;
        private Button LoanPaymentsButton;
        private Button TransactionsButton;
        private Button LoansButton;
    }
}