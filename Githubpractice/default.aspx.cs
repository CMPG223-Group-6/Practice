using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Github_practice
{
    public partial class _default : System.Web.UI.Page
    {
        string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PracticeDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            int userID = 0;
            using (SqlConnection conn = new SqlConnection(conString))
            {
                conn.Open();

                string sql = "INSERT INTO Users (LastName, FirstName, Email, StudentNum) VALUES (@LName, @FName, @Email, @studentNum)";

                using (SqlCommand comm = new SqlCommand(sql, conn))
                {
                    comm.Parameters.AddWithValue("@LName", txtLName.Text);
                    comm.Parameters.AddWithValue("@FName", txtFName.Text);
                    comm.Parameters.AddWithValue("@Email", txtEmail.Text);
                    comm.Parameters.AddWithValue("@studentNum", txtStdNum.Text);
                    comm.ExecuteNonQuery();
                }

                string sql2 = "SELECT Id FROM Users WHERE StudentNum = @studentNum";
                SqlCommand cmd = new SqlCommand(sql2, conn);
                cmd.Parameters.AddWithValue("@studentNum", txtStdNum.Text);
                SqlDataReader reader = cmd.ExecuteReader();

                while(reader.Read())
                {
                    userID = (int)reader.GetValue(0);
                }

                lblOutput.Text = "Sign Up Successful. Your User ID is: " + userID;
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            int userID = int.Parse(txtUserID.Text);
            using (SqlConnection conn = new SqlConnection(conString))
            {
                conn.Open();

                string sql2 = "SELECT Id, StudentNum FROM Users WHERE Id = @id";
                SqlCommand cmd = new SqlCommand(sql2, conn);
                cmd.Parameters.AddWithValue("@id", userID);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string stdNum = (string)reader.GetValue(1);
                    if(stdNum == txtSignInStdNum.Text)
                    {
                        Response.Redirect("Menu.aspx");
                    }
                    else
                    {
                        lblOutput.Text = "Invalid credentials";
                    }
                }

                
            }
        }
    }
}