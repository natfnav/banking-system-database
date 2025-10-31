using Npgsql;
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
    public partial class ModifyMenu : Form
    {
        private string query = "SELECT * FROM accounts";

        public ModifyMenu()
        {
            InitializeComponent();
        }

        private void ModifyMenu_Load(object sender, EventArgs e)
        {

        }


        // output two variables since want to check if command & table exist
        private void ParseCommand(out string command, out string table)
        {
            command = string.Empty;
            table = string.Empty;

            try
            {
                // convert all into upper so commands are uppercase, dont modify query itself
                string trimmedQuery = query.Trim().ToUpper();

                // list of valid commands
                string[] commands = { "UPDATE", "INSERT", "DELETE" };

                // check if valid command appears in query, if so update
                foreach (string validCommand in commands)
                {
                    if (trimmedQuery.StartsWith(validCommand))
                    {
                        command = validCommand;
                        break;
                    }
                }

                // if command is found get table
                if (!string.IsNullOrEmpty(command))
                {
                    string[] words = trimmedQuery.Split(' ');

                    switch (command)
                    {
                        case "UPDATE":
                            table = words[1];
                            break;
                        case "DELETE":
                            table = words[2];
                            break;
                        case "INSERT":
                            table = words[2];
                            break;
                    }
                }

            }
            catch
            {
                command = "Invalid";
                table = "Invalid";
            }
        }

        private void UpdateTable_Click(object sender, EventArgs e)
        {
            try
            {
                // get query
                query = InputBox.Text;

                ParseCommand(out string command, out string table);

                // run query if command & table are valid
                if (command != "Invalid" && table != "Invalid")
                {
                    // run query
                    ExecuteQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ExecuteQuery()
        {
            try
            {
                using (var connection = new NpgsqlConnection(PGSQLDatabase.connectionString))
                {
                    connection.Open();
                    using (var command = new NpgsqlCommand(query, connection))
                    {
                        command.ExecuteNonQuery();
                    }
                }

                Success.Text = "Success";

            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred while executing the query: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                Success.Text = "Error";
            }
        }

    }
}
