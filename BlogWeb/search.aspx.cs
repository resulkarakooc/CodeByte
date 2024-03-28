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
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["search"] != null)
            {
                wanted.Text = (string)Session["search"] + " ile ilgili arama sonuçları";
                
            }

            string aranan = (string)Session["search"];

            SqlCommand arama = new SqlCommand("Select TOP 6 blogID , b.writerID , b.deparID ,blogTitle , blogImg ," +
                    "CONCAT(SUBSTRING(bdescription, 1, 70), '...') AS aciklama, bConfirmation, b.bdate ,w.writerID , w.writerImg, writerName, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID =" +
                    " w.writerID inner join Table_depart d on b.deparID= d.deparID where bConfirmation= @confirm and blogTitle like '%' +  @psrc + '%'", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            arama.Parameters.AddWithValue("@psrc", aranan);
            arama.Parameters.AddWithValue("@confirm", true);

            SqlDataReader oku = arama.ExecuteReader();


            ListView1.DataSource = oku;
            ListView1.DataBind();


            oku.Close();

        }
    }
}