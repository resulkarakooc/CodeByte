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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerbtn_click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into Table_writer (writername, writerMail, writerPass, writerAbout) values (@pname, @pmail, @ppass, @pabout)", SqlConnectClass.connection);
            SqlCommand control = new SqlCommand("select * from Table_writer", SqlConnectClass.connection);




            SqlConnectClass.checkconnection();

            if (!IsUsernameUnique(tbname.Text))
            {
                //HATA
                lblerror.Text = "Kullanıcı adı kullanılıyor ";


            }
            else if (!IsEmailUnique(tbmail.Text))
            {
                lblerror.Text = "Email kullanılıyor ";
            }
            else
            {
                string newpass = Sha256converter.ComputeSha256Hash(tbpass.Text);



                cmd.Parameters.AddWithValue("@pname", tbname.Text);
                cmd.Parameters.AddWithValue("@pmail", tbmail.Text);
                cmd.Parameters.AddWithValue("@pabout", tbabout.Text);
                cmd.Parameters.AddWithValue("@ppass", newpass);

                tbname.Text = "";
                tbmail.Text = "";
                tbabout.Text = "";
                tbpass.Text = "";

                cmd.ExecuteNonQuery();

                lblerror.Text = "Kayıt başarılı";

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