using Library.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class DSección {

        public static bool InsertarSección(int año, string especialidad, char sección) {
            Sección obj = new Sección();
            obj.Año=año;
            obj.Especialidad=especialidad;
            obj.sección1=sección;
            return obj.InsertarSección(obj);
        }

    }
}