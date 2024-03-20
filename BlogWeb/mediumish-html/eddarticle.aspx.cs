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
    public partial class eddarticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {

                if (!Page.IsPostBack)
                {
                    SqlCommand alangetir = new SqlCommand("select * from Table_depart", SqlConnectClass.connection);

                    SqlConnectClass.checkconnection();

                    SqlDataReader getir = alangetir.ExecuteReader();

                    Drdepar.DataTextField = "deparName";
                    Drdepar.DataValueField = "deparID";

                    Drdepar.DataSource = getir;

                    Drdepar.DataBind();

                    getir.Close();
                }
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            SqlCommand adddata = new SqlCommand("Insert into Table_blog (writerID, blogTitle, deparID,  blogImg, bdescription, bflag) values (@pyazar, @ptitle, @palan, @pphoto ,@pdesc, @pflag)", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            int writerID = Convert.ToInt32(Session["WriterID"]);
            adddata.Parameters.AddWithValue("@palan", Drdepar.SelectedValue);
            adddata.Parameters.AddWithValue("pflag", tbflag.Text);
            adddata.Parameters.AddWithValue("@pTitle", tbTitle.Text);
            adddata.Parameters.AddWithValue("@pphoto", tbimg.Text);
            adddata.Parameters.AddWithValue("@pdesc", tbicerik.Text);
            adddata.Parameters.AddWithValue("@pyazar", writerID);



            tbimg.Text = "";
            tbicerik.Text = "";
            tbflag.Text = "";
            tbTitle.Text = "";

            adddata.ExecuteNonQuery();



        }
    }
}