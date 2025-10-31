namespace Team11_Bank_Database
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            ViewButton = new Button();
            ModifyButton = new Button();
            QueryButton = new Button();
            SuspendLayout();
            // 
            // ViewButton
            // 
            ViewButton.Location = new Point(332, 264);
            ViewButton.Name = "ViewButton";
            ViewButton.Size = new Size(170, 77);
            ViewButton.TabIndex = 0;
            ViewButton.Text = "View Data";
            ViewButton.UseVisualStyleBackColor = true;
            ViewButton.Click += ViewButton_Click;
            // 
            // ModifyButton
            // 
            ModifyButton.Location = new Point(114, 88);
            ModifyButton.Name = "ModifyButton";
            ModifyButton.Size = new Size(170, 77);
            ModifyButton.TabIndex = 1;
            ModifyButton.Text = "Modify Data";
            ModifyButton.UseVisualStyleBackColor = true;
            ModifyButton.Click += ModifyButton_Click;
            // 
            // QueryButton
            // 
            QueryButton.Location = new Point(544, 88);
            QueryButton.Name = "QueryButton";
            QueryButton.Size = new Size(170, 77);
            QueryButton.TabIndex = 2;
            QueryButton.Text = "Query Data";
            QueryButton.UseVisualStyleBackColor = true;
            QueryButton.Click += QueryButton_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(QueryButton);
            Controls.Add(ModifyButton);
            Controls.Add(ViewButton);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
        }

        #endregion

        private Button ViewButton;
        private Button ModifyButton;
        private Button QueryButton;
    }
}
