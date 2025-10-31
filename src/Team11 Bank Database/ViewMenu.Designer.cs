namespace Team11_Bank_Database
{
    partial class ViewMenu
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
            ATMWithdrawals = new Button();
            AccountsByBranch = new Button();
            EmployeesPerBranch = new Button();
            LoanInfoButton = new Button();
            ((System.ComponentModel.ISupportInitialize)TableView).BeginInit();
            SuspendLayout();
            // 
            // TableView
            // 
            TableView.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            TableView.Location = new Point(12, 22);
            TableView.Name = "TableView";
            TableView.RowHeadersWidth = 51;
            TableView.Size = new Size(1016, 362);
            TableView.TabIndex = 0;
            // 
            // ATMWithdrawals
            // 
            ATMWithdrawals.Location = new Point(12, 416);
            ATMWithdrawals.Name = "ATMWithdrawals";
            ATMWithdrawals.Size = new Size(154, 74);
            ATMWithdrawals.TabIndex = 1;
            ATMWithdrawals.Text = "Get Total ATM Withdrawals From Current Year";
            ATMWithdrawals.UseVisualStyleBackColor = true;
            ATMWithdrawals.Click += ATMWithdrawals_Click;
            // 
            // AccountsByBranch
            // 
            AccountsByBranch.Location = new Point(307, 416);
            AccountsByBranch.Name = "AccountsByBranch";
            AccountsByBranch.Size = new Size(117, 51);
            AccountsByBranch.TabIndex = 2;
            AccountsByBranch.Text = "Get Accounts By Branch";
            AccountsByBranch.UseVisualStyleBackColor = true;
            AccountsByBranch.Click += AccountsByBranch_Click;
            // 
            // EmployeesPerBranch
            // 
            EmployeesPerBranch.Location = new Point(629, 416);
            EmployeesPerBranch.Name = "EmployeesPerBranch";
            EmployeesPerBranch.Size = new Size(117, 51);
            EmployeesPerBranch.TabIndex = 3;
            EmployeesPerBranch.Text = "Get Employees Per Branch";
            EmployeesPerBranch.UseVisualStyleBackColor = true;
            EmployeesPerBranch.Click += EmployeesPerBranch_Click;
            // 
            // LoanInfoButton
            // 
            LoanInfoButton.Location = new Point(912, 416);
            LoanInfoButton.Name = "LoanInfoButton";
            LoanInfoButton.Size = new Size(116, 51);
            LoanInfoButton.TabIndex = 4;
            LoanInfoButton.Text = "Get Customer Loan Info";
            LoanInfoButton.UseVisualStyleBackColor = true;
            LoanInfoButton.Click += LoanInfoButton_Click;
            // 
            // ViewMenu
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1040, 525);
            Controls.Add(LoanInfoButton);
            Controls.Add(EmployeesPerBranch);
            Controls.Add(AccountsByBranch);
            Controls.Add(ATMWithdrawals);
            Controls.Add(TableView);
            Name = "ViewMenu";
            Text = "ViewMenu";
            Load += ViewMenu_Load;
            ((System.ComponentModel.ISupportInitialize)TableView).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView TableView;
        private Button ATMWithdrawals;
        private Button AccountsByBranch;
        private Button EmployeesPerBranch;
        private Button LoanInfoButton;
    }
}