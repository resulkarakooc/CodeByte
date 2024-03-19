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
    public partial class Author : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedid = Convert.ToInt32(Request.QueryString["id"]);

            SqlCommand postcmd = new SqlCommand("Select * from Table_writer where writerID=@pid  ", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            postcmd.Parameters.AddWithValue("@pid", selectedid);

            SqlDataReader ikra = postcmd.ExecuteReader();

            ListView1.DataSource = ikra;
            ListView1.DataBind();

            ikra.Close();

            SqlCommand cmdlist = new SqlCommand("Select blogID , b.writerID , b.deparID ,blogTitle , blogImg ," +
                " bdescription,   bConfirmation ,w.writerID ,writerName, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID =" +
                " w.writerID inner join Table_depart d on b.deparID= d.deparID where bConfirmation= @confirm and w.writerID=@ppid", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            cmdlist.Parameters.AddWithValue("@confirm", true);
            cmdlist.Parameters.AddWithValue("@ppid", selectedid);

            SqlDataReader oku = cmdlist.ExecuteReader();

            //using (oku)  gerektiğinde kullan code for emergency
            //{
            ListView2.DataSource = oku;
            ListView2.DataBind();

            oku.Close();

            

        }
    }
}