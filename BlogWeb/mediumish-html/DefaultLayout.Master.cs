using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb.mediumish_html
{
    public partial class DefaultLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                Button1.Text = "Log Out";
                HyperLink1.Enabled = true;

            }
            else
            {
                Button1.Text = "Log In";
                HyperLink1.Enabled = false;

            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                HyperLink1.Enabled = false;
                Session["IsUserOnline"] = false;
                Session.Clear();
                Button1.Text = "Log In";

                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                Response.Redirect("LoginPage.aspx");

            }

        }
    }

}