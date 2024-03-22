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
    public partial class medpost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedid = Convert.ToInt32(Request.QueryString["id"]);

            SqlCommand postcmd = new SqlCommand("Select blogID , b.writerID , b.deparID, b.bflag ,blogTitle , blogImg ," +
                " bdescription , bConfirmation ,w.writerID, w.writerImg ,writerName,w.writerAbout, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID =" +
                " w.writerID inner join Table_depart d on b.deparID= d.deparID where blogID=@pid  ", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            postcmd.Parameters.AddWithValue("@pid", selectedid);

            SqlDataReader ikra = postcmd.ExecuteReader();

            ListView2.DataSource = ikra;
            ListView2.DataBind();

            ikra.Close();


            SqlCommand cmd2list = new SqlCommand("Select TOP 6 blogID , b.writerID , b.deparID ,blogTitle , blogImg ," +
                " bdescription , bConfirmation ,w.writerID, w.writerImg ,writerName, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID =" +
                " w.writerID inner join Table_depart d on b.deparID= d.deparID where bConfirmation= @confirm ORDER BY NEWID();", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            cmd2list.Parameters.AddWithValue("@confirm", true);

            SqlDataReader okupost = cmd2list.ExecuteReader();

            ListView1.DataSource = okupost;
            ListView1.DataBind();

            okupost.Close();


        }
    }
}