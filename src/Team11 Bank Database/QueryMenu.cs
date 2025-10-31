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
    public partial class QueryMenu : Form
    {
        string query = "SELECT * FROM Accounts ORDER BY AccountID DESC";
        public QueryMenu()
        {
            InitializeComponent();

        }

        private void QueryMenu_Load(object sender, EventArgs e)
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

        private void CustomersButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Customers ORDER BY CustomerID ASC";
            LoadData();
        }

        private void BranchesButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Branches ORDER BY BranchID ASC";
            LoadData();
        }

        private void EmployeesButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Employees ORDER BY EmployeeID ASC";
            LoadData();
        }

        private void ManagersButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Managers ORDER BY EmployeeID ASC";
            LoadData();
        }

        private void TellersButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Tellers ORDER BY EmployeeID ASC";
            LoadData();
        }

        private void AccountsButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Accounts ORDER BY AccountID ASC";
            LoadData();
        }

        private void OwnsButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Owns ORDER BY CustomerID DESC, AccountID ASC";
            LoadData();
        }

        private void CardsButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Cards ORDER BY AccountID ASC";
            LoadData();
        }

        private void LoansButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Loans ORDER BY AccountID ASC";
            LoadData();
        }

        private void TransactionsButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM Transactions ORDER BY TransactionID ASC";
            LoadData();
        }

        private void LoanPaymentsButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM LoanPayments ORDER BY TransactionID ASC";
            LoadData();
        }

        private void ATMButton_Click(object sender, EventArgs e)
        {
            // set query to show all data from table
            query = "SELECT * FROM ATM ORDER BY BranchID ASC";
            LoadData();
        }
    }
}
