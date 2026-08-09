using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Github_practice
{
    public partial class Pizzaform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try 
            { 
                if (!IsPostBack) 
                { 
                    
                    txtTip.Visible = false; 
                } 
            } 
            catch (Exception ex) 
                { 
                    lblMessage.Text = "Error: " + ex.Message; 
                }

            if(!ckbTip.Checked)
            {
               rfvTip.Enabled = false;
            }


        }
        protected void btnOrder_Click(object sender, EventArgs e)
        {
            double total = 0.0;
            string SizeType = ddlSize.SelectedItem.Text;
            double SizePrice = 0.0;
            double CrustPrice = 0.0 ;
           
            double toppingPrice = 2.0;
            double tip = 0.0 ;

            if (SizeType == "Small") 
            {
                SizePrice = 35.0;
            }
            else if (SizeType == "Medium") 
            {
                SizePrice = 50.0;
            } 
            else if (SizeType == "Large") 
            {
                SizePrice = 80.0;
            }


            if (!rbThin.Checked && !rbThick.Checked)
            {
                lblValidateCrust.Text = "Please select a crust type.";
                return;
            }
                if (rbThin.Checked)
            {
                CrustPrice = 5.0;
 
            }
            else if (rbThick.Checked)
            {
                CrustPrice = 8.0;
            }
            else
            {
                lblValidateCrust.Text = "Please select a crust type.";
            }


            if (lbToppings.SelectedIndex != -1)
            {
                toppingPrice = 2;
            }

            total = SizePrice + CrustPrice + toppingPrice;
            lblMessage.Text = "The full amount is " + total.ToString("C");

            if (ckbTip.Checked)
            {
                tip = double.Parse(txtTip.Text);
                if (tip > 0)
                {
                    total = SizePrice + CrustPrice + toppingPrice + tip;
                    lblMessage.Text = "The full amount is " + total.ToString("C");
                }
                else
                {
                    lblMessage.Text = "Please enter positive amount";
                }
            }

            

            // Store the customer's information
            Session["Name"] = txtName.Text;
            Session["Email"] = txtEmail.Text;
            Session["Pizza Size"] = ddlSize.SelectedValue;
            Session["Topping"] = lbToppings.SelectedValue;

            if (rbThin.Checked)
            {
                Session["Crust"] = "Thin";
            }
            else if (rbThick.Checked)
            {
                Session["Crust"] = "Thick";
            }
            // Store the tip if the customer selected Add a tip
            if (ckbTip.Checked)
             {
                  Session["Tip"] = txtTip.Text;
             }
             else
             {
                  Session["Tip"] = "0";
             } 
        }

        protected void ckbTip_CheckedChanged(object sender, EventArgs e)
        {
            
            if (ckbTip.Checked) 
            {
                txtTip.Visible = true;            

            } 
            else 
            { 
                txtTip.Visible = false;
                txtTip.Text = ""; 
            }

            
        }

        protected void btnBacktoMenu_Click(object sender, EventArgs e)
        {
            // Go to the default pages aweh
            Response.Redirect("menu.aspx");
        }
    }
}