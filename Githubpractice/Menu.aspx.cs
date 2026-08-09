using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Github_practice
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int option = int.Parse(txtOption.Text);

            if(option == 1)
            {
                Response.Redirect("ModuleBooking.aspx");
            }
            else if(option == 2)
            {
                Response.Redirect("AppointmentBooking.aspx");
            }
            else if(option == 3)
            {
                Response.Redirect("GymBooking.aspx");
            }
            else if(option == 4)
            {
                Response.Redirect("VolleyballBooking.aspx");
            }
            else if(option == 5)
            {
                Response.Redirect("OrderPizza.aspx");
            }
            else if(option == 6)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid option. Please enter a number between 1 and 6.";
            }
        }
    }
}