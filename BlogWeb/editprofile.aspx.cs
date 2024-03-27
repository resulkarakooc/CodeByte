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

                SqlConnectClass.checkconnection();

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