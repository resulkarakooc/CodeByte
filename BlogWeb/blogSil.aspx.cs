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
    public partial class blogSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedid = Convert.ToInt32(Request.QueryString["id"]);

            SqlCommand sil = new SqlCommand("delete from Table_blog where   blogID=@pid ", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            sil.Parameters.AddWithValue("@pid",selectedid);

            sil.ExecuteNonQuery();

            Response.Redirect("C:\\Users\\Resul Karakoç\\source\\repos\\BlogWeb\\BlogWeb\\mediumish-html\\profil.aspx");
            
        }
    }
}