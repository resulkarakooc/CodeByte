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
    public partial class editprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                //no  problem 

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {



            int writerID = Convert.ToInt32(Session["WriterID"]);

            SqlCommand editp = new SqlCommand("update Table_writer set writerName=@name, writerUnvan=@unvan, writerSkill=@skill, writerImg=@photo, writerMail=@mail, writerAbout=@pabout  where writerID=@pid", SqlConnectClass.connection);
            SqlCommand link = new SqlCommand(@"UPDATE Table_link SET writerID = CASE WHEN writerID IS NULL THEN @pidd ELSE writerID END, github = COALESCE(@pgit, github), linkedln = COALESCE(@plink, linkedln), website = COALESCE(@pweb, website), facebook = COALESCE(@pfab, facebook), instagram = COALESCE(@pinsta, instagram), twitter = COALESCE(@px, twitter) WHERE writerID = @pid; IF @@ROWCOUNT = 0 BEGIN INSERT INTO Table_link (writerID, github, linkedln, website, facebook, instagram, twitter) VALUES (@pidd, @pgit, @plink, @pweb, @pfab, @pinsta, @px); END");


            SqlConnectClass.checkconnection();

            link.Parameters.AddWithValue("@pweb", website.Text);
            link.Parameters.AddWithValue("@pid", writerID);
            link.Parameters.AddWithValue("@pgit", github.Text);
            link.Parameters.AddWithValue("@pfab", facebook.Text);
            link.Parameters.AddWithValue("@pinsta", instagram.Text);
            
            link.Parameters.AddWithValue("@px", twitter.Text);


            editp.Parameters.AddWithValue("@pid", writerID);
            editp.Parameters.AddWithValue("@name", TextBox1.Text);
            editp.Parameters.AddWithValue("@unvan", TextBox3.Text);
            editp.Parameters.AddWithValue("@skill", TextBox5.Text);
            editp.Parameters.AddWithValue("@photo", TextBox11.Text);
            editp.Parameters.AddWithValue("@mail", TextBox2.Text);
            editp.Parameters.AddWithValue("@pabout", TextBox4.Text);


            editp.ExecuteNonQuery();

            Response.Redirect("profil.aspx");






        }
    }
} //Resul Karakoç