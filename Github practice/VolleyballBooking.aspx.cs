using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Github_practice
{
    public partial class VolleyballBooking : System.Web.UI.Page
    {
        SqlConnection cnn;
        SqlCommand cmd;
        SqlDataAdapter adap;
        DataSet ds;

        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PracticeDB.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            try
            {
                if (!rdoPC.Checked && !rdoVC.Checked && !rdoMC.Checked)
                {
                    lblDisplay1.Text = "Please select a campus!";
                    return;
                }

                DateTime dateSelected = calDates.SelectedDate;

                if (dateSelected == DateTime.MinValue)
                {
                    lblDisplay1.Text = "Please select a date.";
                    return;
                }

                if (dateSelected < DateTime.Today)
                {
                    lblDisplay1.Text = "Appointment date must be in the future.";
                    return;
                }

                string campus = "";
                string timeSlot = "";

                if (rdoPC.Checked)
                {
                    campus = "PC";
                    timeSlot = "09:00 AM";
                }
                else if (rdoVC.Checked)
                {
                    campus = "VC";
                    timeSlot = "11:00 AM";
                }
                else if (rdoMC.Checked)
                {
                    campus = "MC";
                    timeSlot = "02:00 PM";
                }

                string firstName = txtName.Text;
                string lastName = txtSurname.Text;
                string email = txtEmail.Text;
                string studentNum = txtStudentNumber.Text;

                cnn = new SqlConnection(conStr);
                cnn.Open();

                string sql = "INSERT INTO Users (LastName, FirstName, Email, StudentNum) VALUES (@LastName, @FirstName, @Email, @StudentNum)";
                cmd = new SqlCommand(sql, cnn);

                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@StudentNum", studentNum);

                cmd.ExecuteNonQuery();
                cnn.Close();

                lblDisplay1.Text = "Hi " + firstName + " " + lastName + ", your " + campus +
                                   " class has been booked for " + dateSelected.ToString("dddd") +
                                   ", " + dateSelected.ToString("yyyy/MM/dd") + ".";

                lblDisplay2.Text = "Time slot: " + timeSlot;
            }
            catch (Exception error)
            {
                lblDisplay1.Text = error.Message;
            }

        }

        protected void btnPizza_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderPizza.aspx");
        }
    }
}