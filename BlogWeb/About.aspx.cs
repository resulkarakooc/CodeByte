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
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void ContactButon_Click(object sender, EventArgs e)
        {
            SqlCommand msg = new SqlCommand("Insert into Table_contact (Username, Email, Messages) values (@name, @mail, @mesaj)", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            msg.Parameters.AddWithValue("@name", TextBox1.Text);
            msg.Parameters.AddWithValue("@mail", TextBox2.Text);
            msg.Parameters.AddWithValue("@mesaj", TextBox3.Text);

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            

            msg.ExecuteNonQuery();

          

        }


    }
}