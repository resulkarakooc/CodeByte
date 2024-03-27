using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BlogWeb.Classes
{
    public class SqlConnectClass
    {
        public static SqlConnection connection = new SqlConnection("Data Source=31.186.11.157\\MSSQLSERVER2019;Initial Catalog=BlogWebb;user=resul;password=cT8bMn&H9ilc9tk&");
        public static void checkconnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
        }
    }


}