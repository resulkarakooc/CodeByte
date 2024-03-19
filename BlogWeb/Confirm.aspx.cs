using BlogWeb.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {

                SqlCommand confirm = new SqlCommand("Select blogID , b.writerID , b.deparID ,blogTitle , blogImg , bdescription , bConfirmation ,w.writerID ,writerName, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID = w.writerID inner join Table_depart d on b.deparID= d.deparID where bConfirmation= @confirm ", SqlConnectClass.connection);

                SqlConnectClass.checkconnection();

                confirm.Parameters.AddWithValue("@confirm", false);

                SqlDataReader oku = confirm.ExecuteReader();

                //using (oku)  gerektiğinde kullan code for emergency
                //{
                DataList1.DataSource = oku;
                DataList1.DataBind();
                //}

                oku.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}