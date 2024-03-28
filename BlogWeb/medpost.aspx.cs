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

            SqlCommand adtcmt = new SqlCommand("select  CONCAT(COUNT(blogId), ' Yorum') as sayi from Table_comments where  blogID=@pid", SqlConnectClass.connection);


            SqlConnectClass.checkconnection();

            adtcmt.Parameters.AddWithValue("@pid",selectedid);

            SqlDataReader yorumadetoku = adtcmt.ExecuteReader();

            ListView4.DataSource = yorumadetoku;
            ListView4.DataBind();
            yorumadetoku.Close();



            SqlCommand getyorum = new SqlCommand("Select c.blogID, w.writerName, w.writerImg, c.cmTime, c.cmLike, c.cmYorum from Table_comments c inner join Table_writer w on w.writerID=c.writerID     where blogID=@pblg ;", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            getyorum.Parameters.AddWithValue("@pblg", selectedid);

            SqlDataReader reader = getyorum.ExecuteReader();



            ListView3.DataSource = reader;
            ListView3.DataBind();

            reader.Close();

        }









        protected void btnComment_Click(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                int selectedid = Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand postcmt = new SqlCommand("Insert Into Table_comments (writerID, blogID, cmTime, cmYorum) values(@pid, @pblog,CONVERT(VARCHAR(10),GETDATE(),104), @pyorum)", SqlConnectClass.connection);

                SqlConnectClass.checkconnection();

                int id = (int)Session["writerID"];

                postcmt.Parameters.AddWithValue("@pid", id);
                postcmt.Parameters.AddWithValue("@pblog", selectedid);
                postcmt.Parameters.AddWithValue("@pyorum", message.Value);

                message.Value = "";
                postcmt.ExecuteNonQuery();
                Response.Redirect(string.Format("medpost.aspx?id={0}", id));

            }
            else
            {
                Response.Redirect("Loginpage.aspx");
            }

        }
    }
}