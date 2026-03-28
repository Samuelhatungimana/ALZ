using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALZ.ALZ
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Register"] != null)
            {
                HttpCookie cookie = Request.Cookies["Register"];

                string dates = cookie.Values["Date"];
                lblLocation.Text = cookie.Values["Walk Location"];
                lblTeamName.Text = cookie.Values["Team Name"];
                lblFirstName.Text = cookie.Values["First Name"];
                lblLastName.Text = cookie.Values["Last Name"];
                lblAddress.Text = cookie.Values["Address"];
                lblCity.Text = cookie.Values["City"];
                lblZip.Text = cookie.Values["Zip"];
                lblPhone.Text = cookie.Values["Phone"];
                lblEmail.Text = cookie.Values["Email"];
                lblCompany.Text = cookie.Values["Company Name"];
                lblJobTitle.Text = cookie.Values["Job Title"];
                lblSignature.Text = cookie.Values["Signature"];
            
                lblAmount.Text = cookie.Values["Amount"];
                lbltOthers.Text = cookie.Values["Others"];

                DateTime signature = DateTime.Parse(cookie.Values["Date"].ToString());
                DateTime birthDay = DateTime.Parse(cookie.Values["Birth Day"].ToString());
                lblDate.Text = signature.ToString("MM/dd/yy");
                lblBirthDay.Text = birthDay.ToString("MM/dd/yy");
               


                cookie.Expires = DateTime.Now.AddDays(14);

             //   Response.Cookies.Add(cookie);
             
               


            }
            else
            {
                Response.Redirect("Register.aspx");
            }

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            Response.Redirect("ThankYou.aspx");
        }
    }
}