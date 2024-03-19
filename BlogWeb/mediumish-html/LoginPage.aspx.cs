using BlogWeb.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb.mediumish_html
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlCommand login = new SqlCommand("Select * from Table_writer where writerMail=@pmail and writerPass=@ppass", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            string cntrolpass = Sha256converter.ComputeSha256Hash(tbpass.Text);



            login.Parameters.AddWithValue("@pmail", tbmaill.Text);
            login.Parameters.AddWithValue("@ppass", cntrolpass);

            DataTable dataTable = new DataTable();

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(login);

            sqlDataAdapter.Fill(dataTable);

            if (dataTable.Rows.Count > 0)
            {
                Response.Write("giriş yapıldı");
                if (tbmaill.Text == "resul.karakoc@gmail.com")
                {
                    Session["IsUserAdmin"] = true;
                    Response.Redirect("~/AdminPanel.aspx");
                }
                else
                {
                    Session["IsUserOnline"] = true;
                    Response.Redirect("HomePage.aspx");
                }

            }
            else
            {
                Response.Write("kullanici adı veya şifre yanlış");
            }



        }
    }
}