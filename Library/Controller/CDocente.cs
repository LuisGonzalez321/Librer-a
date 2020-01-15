using Library.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class CDocente {

        public static bool InsertarDocente(int No_Dui, string Nombres, string Apellidos, string Teléfono, string Dirección, string Especialidad, string Turno, string sección) {
            Docente obj = new Docente();
            obj.No_Dui1=No_Dui;
            obj.Nombres1=Nombres;
            obj.Apellidos1=Apellidos;
            obj.Teléfono1=Teléfono;
            obj.Dirección1=Dirección;
            obj.Especialidad1=Especialidad;
            obj.Turno1=Turno;
            obj.Sección=sección;
            return obj.InsertarDocente(obj);
        }

       public static System.Data.DataTable MostrarDocente() {
            return new Docente().MostrarDocente();
        }

    }
}