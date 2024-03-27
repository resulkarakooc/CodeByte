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
                int writerID = Convert.ToInt32(dataTable.Rows[0]["writerID"]);
                Session["WriterID"] = writerID;

                Response.Write("giriş yapıldı");
                if (tbmaill.Text == "resul.karakoc@gmail.com")
                {
                    Session["IsUserAdmin"] = true;
                    Session["IsUserOnline"] = true;
                    Response.Redirect("~/AdminPanel.aspx");
                    tbname.Text = "";
                    tbmail.Text = "";

                    tbpass.Text = "";


                }
                else
                {
                    Session["IsUserOnline"] = true;
                    Response.Redirect("Default.aspx");
                    tbname.Text = "";
                    tbmail.Text = "";

                    tbpass.Text = "";

                }

            }
            else
            {
                Response.Write("kullanici adı veya şifre yanlış");
                tbname.Text = "";
                tbmail.Text = "";

                tbpass.Text = "";

            }


        }

        protected void registerbtn_click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into Table_writer (writername, writerMail, writerPass) values (@pname, @pmail, @ppass)", SqlConnectClass.connection);
            SqlCommand control = new SqlCommand("select * from Table_writer", SqlConnectClass.connection);




            SqlConnectClass.checkconnection();

            if (!IsUsernameUnique(tbname.Text))
            {
                //HATA
               
                titlee.InnerText = "Kullanıcı adı kullanılıyor";
                tbname.Text = "";
                tbmail.Text = "";

                tbpass.Text = "";


            }
            else if (!IsEmailUnique(tbmail.Text))
            {
              
                titlee.InnerText = "email kullanılıyor";
                tbname.Text = "";
                tbmail.Text = "";

                tbpass.Text = "";
            }
            else
            {
                string newpass = Sha256converter.ComputeSha256Hash(tbbpass.Text);



                cmd.Parameters.AddWithValue("@pname", tbname.Text);
                cmd.Parameters.AddWithValue("@pmail", tbmail.Text);
                
                cmd.Parameters.AddWithValue("@ppass", newpass);

                tbname.Text = "";
                tbmail.Text = "";
                
                tbpass.Text = "";
                

                cmd.ExecuteNonQuery();

               
                titlee.InnerText = "Kayıt basarılı";

            }




        }

        private bool IsUsernameUnique(string username)
        {
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Table_writer WHERE writername = @username", SqlConnectClass.connection);
            cmd.Parameters.AddWithValue("@username", username);

            SqlConnectClass.checkconnection();

            int count = (int)cmd.ExecuteScalar();

            return count == 0; // 0 ise kullanıcı adı benzersizdir
        }

        // E-posta adresinin benzersiz olup olmadığını kontrol et

        private bool IsEmailUnique(string email)
        {
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Table_writer WHERE writerMail = @email", SqlConnectClass.connection);
            cmd.Parameters.AddWithValue("@email", email);

            SqlConnectClass.checkconnection();

            int count = (int)cmd.ExecuteScalar();

            return count == 0; // 0 ise e-posta adresi benzersizdir
        }
    }
}