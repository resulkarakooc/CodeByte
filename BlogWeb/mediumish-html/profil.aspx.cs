using BlogWeb.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb.mediumish_html
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                //no  problem
                SqlCommand profil = new SqlCommand("select * from Table_writer where writerID=@pid",SqlConnectClass.connection);

                SqlConnectClass.checkconnection();

                int writerID = Convert.ToInt32(Session["WriterID"]);
                profil.Parameters.AddWithValue("@pid", writerID);

                SqlDataReader getir = profil.ExecuteReader();

                ListView1.DataSource = getir;
                ListView1.DataBind();

                getir.Close();
               

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }

            




        }


    }
}