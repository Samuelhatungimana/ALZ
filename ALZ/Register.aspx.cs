using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALZ.ALZ
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void txtSignature_Disposed(object sender, EventArgs e)
        {
            
        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                HttpCookie cookie = new HttpCookie("Register");
                cookie.Values["Walk Location"] = txtWalkLocation.Text;
                cookie.Values["Team Name"] = txtTeamName.Text;
                cookie.Values["First Name"] = txtFirstName.Text;
                cookie.Values["Last Name"] = txtLastName.Text;
                cookie.Values["Address"] = txtAddress.Text;
                cookie.Values["City"] = txtCity.Text;
                cookie.Values["Zip"] = txtZip.Text;
                cookie.Values["Phone"] = txtPhone.Text;
                cookie.Values["Email"] = txtEmail.Text;
                cookie.Values["Signature"] = txtSignature.Text;
                cookie.Values["Amount"] = txtAmount.Text;
                cookie.Values["Others"] = txtothers.Text;
                cookie.Values["Date"] = txtDate.Text;
                cookie.Values["Birth Day"] = txtBirthDay.Text;
                cookie.Values["Company Name"] = txtCompany.Text;
                cookie.Values["Job Title"] = txtJobTitle.Text;
               



                if (txtmale.Checked == true)
                {
                    cookie.Values["gender"] = "Male";
                }
                else if (txtfemale.Checked == true)
                {

                    cookie.Values["gender"] = "Female";
                }
                else if (txtnoTosay.Checked == true)
                {
                    cookie.Values["gender"] = "Prefer not to say";
                }

                // cookies for race

                if (african.Checked==true)
                {
                    cookie.Values["race"] = "Afrincan-American/Black";
                }
                if(indian.Checked == true)
                {
                    cookie.Values["race"] = "American-Indian/Alaskan native";
                }
                if (asian.Checked == true)
                {
                    cookie.Values["race"] = "Asian";
                }
                if (white.Checked == true)
                {
                    cookie.Values["race"] = "Causian/White";
                }
                if (hispanic.Checked == true)
                {
                    cookie.Values["race"] = "Hispanic/Latino";
                }
                if (hawaiian.Checked == true)
                {
                    cookie.Values["race"] = "Native Hawaiian/Other Pacific Islander";
                }
                
                // Cookies for education information

                if (lessthan.Checked==true)
                {
                    cookie.Values["education"] = "Less than Highschool degree";
                }
                if (highschool.Checked == true)
                {
                    cookie.Values["education"] = "High school graduate";
                }
                if (someCollege.Checked == true)
                {
                    cookie.Values["education"] = "Some College";
                }
                if (undergrad.Checked == true)
                {
                    cookie.Values["education"] = "Bachelor's degree";
                }

                if(postgrad.Checked == true)
                {
                    cookie.Values["education"] = "Post/Professional degree";

                }

                if (not.Checked == true)
                {
                    cookie.Values["education"] = "Prefer not to say";
                }


                cookie.Expires = DateTime.Now.AddDays(14);
                Response.Cookies.Add(cookie);

                Response.Redirect("Confirm.aspx");
            }
            else
            {
                return;
            }
           
           
        }

        
    }
}