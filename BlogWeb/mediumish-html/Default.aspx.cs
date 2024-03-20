using BlogWeb.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb.mediumish_html
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmdlist = new SqlCommand("Select TOP 6 blogID , b.writerID , b.deparID ,blogTitle , blogImg ," +
                " bdescription,   bConfirmation ,w.writerID ,writerName, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID =" +
                " w.writerID inner join Table_depart d on b.deparID= d.deparID where bConfirmation= @confirm ORDER BY NEWID(); ", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            cmdlist.Parameters.AddWithValue("@confirm", true);

            SqlDataReader oku = cmdlist.ExecuteReader();

            //using (oku)  gerektiğinde kullan code for emergency
            //{
            ListView1.DataSource = oku;
            ListView1.DataBind();
            //}
            //DataList2.DataSource = oku;
            //DataList2.DataBind();

            oku.Close();

            SqlCommand cmd2list = new SqlCommand("Select Top 10 blogID , b.writerID , b.deparID ,blogTitle , blogImg ," +
                " bdescription , bConfirmation ,w.writerID ,writerName, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID =" +
                " w.writerID inner join Table_depart d on b.deparID= d.deparID where bConfirmation= @confirmm ORDER BY NEWID(); ", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            cmd2list.Parameters.AddWithValue("@confirmm", true);

            SqlDataReader ikra = cmd2list.ExecuteReader();

            DataList2.DataSource = ikra;
            DataList2.DataBind();

            ikra.Close();

        }
    }
}