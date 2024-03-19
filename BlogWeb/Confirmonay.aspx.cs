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
    public partial class Confirmonay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedid = Convert.ToInt32(Request.QueryString["id"]);

            SqlCommand updateconfirm = new SqlCommand("update Table_Blog set bConfirmation = 1 where blogID=@pid", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            updateconfirm.Parameters.AddWithValue("@pid", selectedid);

            updateconfirm.ExecuteNonQuery();

            Response.Redirect("Confirm.aspx");

        }
    }
}