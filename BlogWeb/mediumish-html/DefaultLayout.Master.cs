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
                prolink1.Visible = true;

            }
            else
            {
                Button1.Text = "Log In";
                prolink1.Text.Remove(0);
                prolink1.Visible = false;
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                prolink1.Visible = false;
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