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
    public partial class GymBooking : System.Web.UI.Page
    {
        SqlConnection conn;
        String connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\PracticeDB.mdf;Integrated Security=True;Encrypt=False;TrustServerCertificate=False";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnViewInfo_Click(object sender, EventArgs e)
        {
            if (radFemale.Checked || radMale.Checked || radOther.Checked)
            {
                lblErrorGender.Text = "";
                if (radStudent.Checked || radStaff.Checked)
                {    
                    lblError.Text = "";

                    string name = txtName.Text;
                    string surname = txtSurname.Text;
                    string studentNo = txtUniNo.Text;
                    string email = txtEmail.Text;

                    using(SqlConnection conn = new SqlConnection(connStr))
                    {
                        conn.Open();
                        string sql = "INSERT INTO Users VALUES (@name, @surname, @email, @studentNo)";

                        using (SqlCommand cmd = new SqlCommand(sql, conn))
                        {
                            cmd.Parameters.AddWithValue("@surname", surname);
                            cmd.Parameters.AddWithValue("@name", name);
                            cmd.Parameters.AddWithValue("@email", email);
                            cmd.Parameters.AddWithValue("@studentNo", studentNo);
                            cmd.ExecuteNonQuery();
                        }

                        conn.Close();
                    }

                    //Display items in data gridview
                    using (SqlConnection conn = new SqlConnection(connStr))
                    {
                        conn.Open();
                        string sql2 = "SELECT * FROM Users WHERE studentNum = @studentNo";

                        using (SqlCommand comm = new SqlCommand(sql2, conn))
                        {
                            comm.Parameters.AddWithValue("@studentNo", studentNo);

                            SqlDataAdapter adap = new SqlDataAdapter();

                            DataSet ds = new DataSet();
                            adap.SelectCommand = comm;

                            adap.Fill(ds, "Users");
                            gdvDisplay.DataSource = ds.Tables["Users"];
                            gdvDisplay.DataBind();

                            conn.Close();
                        }
                    }             
                }
                else
                {
                    lblError.Text = "Please Select Portofolio";
                }
            }
            else
            {
                lblErrorGender.Text = "Please Select Gender";
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            HttpCookie _userCookie = new HttpCookie("UserInformation");
            _userCookie["Name"] = txtName.Text;
            _userCookie["Surname"] = txtSurname.Text;
            _userCookie["StudentNO"] = txtUniNo.Text;
            _userCookie["Type"] = ddrlType.SelectedItem.Text;
            Response.Cookies.Add(_userCookie);
            _userCookie.Expires = DateTime.Now.AddMinutes(5);
            Response.Redirect("Confirm.aspx");
        }
    }
}