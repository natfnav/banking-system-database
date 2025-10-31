namespace Team11_Bank_Database
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void ViewButton_Click(object sender, EventArgs e)
        {
            ViewMenu viewMenu = new ViewMenu();
            Hide();
            viewMenu.ShowDialog();
            Show();
        }

        private void ModifyButton_Click(object sender, EventArgs e)
        {
            ModifyMenu modifyMenu = new ModifyMenu();
            Hide();
            modifyMenu.ShowDialog();
            Show();
        }

        private void QueryButton_Click(object sender, EventArgs e)
        {
            QueryMenu queryMenu = new QueryMenu();
            Hide();
            queryMenu.ShowDialog();
            Show();
        }
    }
}
