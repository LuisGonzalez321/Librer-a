using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Library.Model;

namespace Library.Controller {
    public class CInstitución {

        public static bool Insertar(int cod_institución, string nombre, string distrito, string teléfono, int año) {
            Institución Obj = new Institución();
            Obj.Cod_institución1=cod_institución;
            Obj.Nombre1=nombre;
            Obj.Distrito1=distrito;
            Obj.Teléfono1=teléfono;
            Obj.Año1=año;
            return Obj.Insertar(Obj);
        }

    }
}