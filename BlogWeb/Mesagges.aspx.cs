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
    public partial class Mesagges : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedid = Convert.ToInt32(Request.QueryString["id"]);
            
            SqlCommand silcantact = new SqlCommand("delete from Table_contact where msID=@pid",SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            silcantact.Parameters.AddWithValue("@pid", selectedid);

            silcantact.ExecuteNonQuery();

            Response.Redirect("AdminPanel.aspx");

        }
    }
}