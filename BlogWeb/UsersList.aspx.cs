using BlogWeb.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class UsersList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                SqlCommand contact = new SqlCommand("select * from Table_writer ", SqlConnectClass.connection);

                SqlConnectClass.checkconnection();

                SqlDataReader yaz = contact.ExecuteReader();

                ListView1.DataSource = yaz;

                ListView1.DataBind();

                yaz.Close();
            }
            else
            {
                Response.Redirect("/mediumish-html/LoginPage.aspx");
            }

        }
    }
}