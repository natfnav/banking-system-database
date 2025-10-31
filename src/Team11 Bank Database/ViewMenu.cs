using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Team11_Bank_Database
{
    public partial class ViewMenu : Form
    {

        string query = "";
        public ViewMenu()
        {
            InitializeComponent();
        }

        private void ViewMenu_Load(object sender, EventArgs e)
        {

        }

        private void LoadData()
        {
            try
            {
                DataTable data = PGSQLDatabase.getData(query);
                TableView.DataSource = data;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred while fetching data: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ATMWithdrawals_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM TotalATMWithdrawals";
            LoadData();
        }

        private void AccountsByBranch_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM BranchAccountBalance";
            LoadData();
        }

        private void EmployeesPerBranch_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM LimitedBranchView";
            LoadData();
        }

        private void LoanInfoButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM CustomerLoansSummary";
            LoadData();
        }

        // view
    }
}
