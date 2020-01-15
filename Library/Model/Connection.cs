using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Controller
{
    public class Connection
    {
        public static string Cn = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
    }

}