namespace Team11_Bank_Database
{
    partial class ModifyMenu
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
            InsertLabel = new Label();
            InputBox = new TextBox();
            UpdateTable = new Button();
            Success = new Label();
            Note = new Label();
            SuspendLayout();
            // 
            // InsertLabel
            // 
            InsertLabel.AutoSize = true;
            InsertLabel.Location = new Point(343, 100);
            InsertLabel.Name = "InsertLabel";
            InsertLabel.Size = new Size(251, 20);
            InsertLabel.TabIndex = 1;
            InsertLabel.Text = "Input Update, Insert, or Delete Query";
            // 
            // InputBox
            // 
            InputBox.Location = new Point(70, 170);
            InputBox.Name = "InputBox";
            InputBox.Size = new Size(771, 27);
            InputBox.TabIndex = 2;
            // 
            // UpdateTable
            // 
            UpdateTable.Location = new Point(343, 218);
            UpdateTable.Name = "UpdateTable";
            UpdateTable.Size = new Size(251, 29);
            UpdateTable.TabIndex = 3;
            UpdateTable.Text = "Submit Query";
            UpdateTable.UseVisualStyleBackColor = true;
            UpdateTable.Click += UpdateTable_Click;
            // 
            // Success
            // 
            Success.AutoSize = true;
            Success.Location = new Point(306, 326);
            Success.Name = "Success";
            Success.Size = new Size(0, 20);
            Success.TabIndex = 4;
            // 
            // Note
            // 
            Note.AutoSize = true;
            Note.Location = new Point(306, 137);
            Note.Name = "Note";
            Note.Size = new Size(359, 20);
            Note.TabIndex = 5;
            Note.Text = "Note: Do not add Semicolon (;) to end of Statements";
            // 
            // ModifyMenu
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(949, 439);
            Controls.Add(Note);
            Controls.Add(Success);
            Controls.Add(UpdateTable);
            Controls.Add(InputBox);
            Controls.Add(InsertLabel);
            Name = "ModifyMenu";
            Text = "ModifyMenu";
            Load += ModifyMenu_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView TableView;
        private Label InsertLabel;
        private TextBox InputBox;
        private Button UpdateTable;
        private Label Success;
        private Label Note2;
        private Label Note;
    }
}