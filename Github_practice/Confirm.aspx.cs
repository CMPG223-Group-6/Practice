using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Github_practice
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie _userCookieRetreive = Request.Cookies["UserInformation"];
            if(_userCookieRetreive != null)
            {
                lblNameDisplay.Text = _userCookieRetreive["Name"];
                lblSurnameDisplay.Text = _userCookieRetreive["Surname"];
                lblStudentNoDisplay.Text = _userCookieRetreive["StudentNo"];
                lblTypeDisplay.Text = _userCookieRetreive["Type"];
            }
        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}