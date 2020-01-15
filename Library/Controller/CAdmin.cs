using Library.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library.Controller
{
    public class CAdmin
    {
       public static int Ingreso(string login,string password,string rol)
        {
            return new Admin().Ingreso(login,password,rol);
        }
    }
}