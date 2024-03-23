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
            int writerID = Convert.ToInt32(Session["WriterID"]);


            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                //no  problem
                SqlCommand profil = new SqlCommand("select * from Table_writer where writerID=@pid", SqlConnectClass.connection);

                SqlConnectClass.checkconnection();


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


            SqlCommand cmdlist = new SqlCommand("Select blogID , b.writerID , b.deparID ,blogTitle , blogImg ," +
                " bdescription, b.bdate,CASE  WHEN b.bConfirmation = 1 THEN 'Onaylandı'  ELSE 'Admin onayı bekleniyor'  " +
                "  END AS bConfirmationText, w.writerID ,writerName, w.writerImg, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID =" +
                " w.writerID inner join Table_depart d on b.deparID= d.deparID where w.writerID=@ppid order by b.bdate  " , SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            cmdlist.Parameters.AddWithValue("@confirm", true);
            cmdlist.Parameters.AddWithValue("@ppid", writerID);

            SqlDataReader oku = cmdlist.ExecuteReader();

            //using (oku)  gerektiğinde kullan code for emergency
            //{
            ListView2.DataSource = oku;
            ListView2.DataBind();

            oku.Close();

          






        }

        
    }
}