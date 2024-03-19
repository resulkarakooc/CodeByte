using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using BlogWeb.Classes;



namespace BlogWeb
{
    public partial class AddBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Convert.ToBoolean( Session["IsUserOnline"])== true)
            {

                if (!Page.IsPostBack)
                {
                    SqlCommand alangetir = new SqlCommand("select * from Table_depart", SqlConnectClass.connection);

                    SqlConnectClass.checkconnection();

                    SqlDataReader getir = alangetir.ExecuteReader();

                    DropDownList1.DataTextField = "deparName";
                    DropDownList1.DataValueField = "deparID";

                    DropDownList1.DataSource = getir;

                    DropDownList1.DataBind();

                    getir.Close();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand adddata = new SqlCommand("Insert into Table_blog (writerID, deparID, blogTitle, blogImg, bdescription) values (@pyazar,@palan,@pbaslik,@pphoto,@pdesc)", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            adddata.Parameters.AddWithValue("@palan", DropDownList1.SelectedValue);
            adddata.Parameters.AddWithValue("@pyazar", TextBox2.Text);
            adddata.Parameters.AddWithValue("@pbaslik", TextBox1.Text);
            adddata.Parameters.AddWithValue("@pphoto", TextBox3.Text);
            adddata.Parameters.AddWithValue("@pdesc", TextBox4.Text);

            if (TextBox2.Text != "4")
            {
                Response.Write("kullanıcı adı yanlış");
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                adddata.ExecuteNonQuery();


            }


        }
    }
}