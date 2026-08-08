using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Github_practice
{
    public partial class AppointmentBooking : System.Web.UI.Page
    {
        SqlConnection cnn;
        SqlCommand cmd;
        SqlDataAdapter adap;
        DataSet ds;
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PracticeDB.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblGridViewHeading.Visible = false;
                gvBookings.Visible = false;
            }
        }

        private void ShowData()
        {
            try
            {
                cnn = new SqlConnection(connectionString);

                cnn.Open();

                string sql = "SELECT * FROM Users";

                adap = new SqlDataAdapter(sql, cnn);
                ds = new DataSet();
                adap.Fill(ds);

                gvBookings.DataSource = ds;
                gvBookings.DataBind();

                cnn.Close();
            }
            catch(SqlException error)
            {
                lblErrorMessage.Text = error.Message;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            try
            {
                if(rdoCash.Checked == false && rdoMedicalAid.Checked == false)
                {
                    lblRadioButtonError.Text = "Select a payment method!";
                    return;
                }

                DateTime dateSelected = Calendar1.SelectedDate;

                if(dateSelected == DateTime.MinValue)
                {
                    lblErrorMessage.Text = "Please select a date";
                    return;
                }

                if (dateSelected <= DateTime.Today)
                {
                    lblErrorMessage.Text = "Appointment date must be in the future";
                    return;
                }

                if (dateSelected.DayOfWeek == DayOfWeek.Saturday || dateSelected.DayOfWeek == DayOfWeek.Sunday)
                {
                    lblErrorMessage.Text = "The appointment can not be on a weekend";
                    return;
                }

                cnn = new SqlConnection(connectionString);

                cnn.Open();

                string sql = "INSERT INTO Users ([Last Name], [First Name], [Email], [Student Num]) VALUES (@LastName, @FirstName, @Email, @StudentNum)";

                cmd = new SqlCommand(sql, cnn);

                string firstName = txtFirstName.Text;
                string lastName = txtLastName.Text;
                string email = txtEmail.Text;
                string studentNumber = txtStudentNumber.Text;
                string service = ddlSelectService.SelectedItem.Text;

                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@StudentNum", studentNumber);
                cmd.ExecuteNonQuery();

                cnn.Close();

                lblErrorMessage.Visible = false;
                lblRadioButtonError.Visible = false;

                lblProperMessage.Text = "Hi " + firstName + " " + lastName + ", your appointment for " + service + " has been booked for " + dateSelected.ToString("yyyy/MM/dd") + " 12:00:00 AM";

                ShowData();

                lblGridViewHeading.Visible = true;

                gvBookings.Visible = true;
            }
            catch(SqlException error)
            {
                lblErrorMessage.Text = error.Message;
            }
        }
    }
}