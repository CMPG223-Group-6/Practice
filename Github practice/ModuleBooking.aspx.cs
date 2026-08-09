using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Github_practice
{
    public partial class ModuleBooking : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter ap;
        SqlCommand cmd;
        string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\hansl\OneDrive\Documents\GitHub\Practice\Github practice\App_Data\PracticeDB.mdf"";Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            
            string name = txtName.Text;
            string surname = txtSurname.Text;
            string studentNumber = txtStudentNo.Text;
            string email = txtEmail.Text;
            string module = ddlModules.SelectedValue;
            DateTime SelectedDate = Calendar1.SelectedDate;


            using (conn = new SqlConnection(conString))
            {
                string sql = "INSERT INTO Users(LastName,FirstName,Email,StudentNum) " +
                             "VALUES(@LastName,@FirstName,@Email,@StudentNum)";

                cmd = new SqlCommand(sql, conn);

                
                cmd.Parameters.AddWithValue("@LastName", surname);
                cmd.Parameters.AddWithValue("@FirstName", name);
                cmd.Parameters.AddWithValue("@StudentNum", studentNumber);
                cmd.Parameters.AddWithValue("@Email", email);
               

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            HttpCookie bookingCookie = new HttpCookie("BookingDetails");

            
            bookingCookie["FirstName"] = name;
            bookingCookie["LastName"] = surname;
            bookingCookie["StudentNum"] = studentNumber;
            bookingCookie["Email"] = email;
            bookingCookie["Module"] = module;
            bookingCookie["AppointmentDate"] = SelectedDate.ToString("yyyy/MM/dd");

            Response.Cookies.Add(bookingCookie);

            if (SelectedDate < DateTime.Today)
            {
                lblOutput.Text = "Appointments can not be made for bookings in the past";
            }
            if (SelectedDate.DayOfWeek == DayOfWeek.Saturday || SelectedDate.DayOfWeek == DayOfWeek.Sunday)
            {
                lblOutput.Text = "Appointments cannot be made on weekends";

            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppointmentBooking.aspx");
        }
    }
}