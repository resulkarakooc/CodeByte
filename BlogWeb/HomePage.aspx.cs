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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdlist = new SqlCommand("Select blogID , b.writerID , b.deparID ,blogTitle , blogImg , bdescription , bConfirmation ,w.writerID ,writerName, d.deparID, deparName  from Table_blog b inner join Table_writer w on  b.writerID = w.writerID inner join Table_depart d on b.deparID= d.deparID where bConfirmation= @confirm ", SqlConnectClass.connection);

            SqlConnectClass.checkconnection();

            cmdlist.Parameters.AddWithValue("@confirm", true);

            SqlDataReader oku = cmdlist.ExecuteReader();

            //using (oku)  gerektiğinde kullan code for emergency
            //{
                DataList1.DataSource = oku;
                DataList1.DataBind();
            //}

            oku.Close();

        }

       
    }
}