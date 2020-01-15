using Library.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class CCategoría {
      
        public static bool InsertarCategoría(string Nombre,string Cod_Categoría) {
                Categoría obj = new Categoría();
                obj.Nombre1=Nombre;
                obj.Cod_Categoría1=Cod_Categoría;
                return obj.InsertarDocente(obj);
        }

        public static DataTable MostrarCategoría() {
            return new Categoría().MostrarDocente();
        }

        public static DataTable MostrarListaCategoría() {
            return new Categoría().MostrarListaCategoría();
        }

    }
}