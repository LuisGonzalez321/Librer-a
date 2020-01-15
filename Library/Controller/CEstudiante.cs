using Library.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class CEstudiante {

        public static bool InsertarEstudiante(string NIE,string Nombres,string Apellidos, string user, char Sección) {
            Estudiante obj = new Estudiante();
            obj.NIE1=NIE;
            obj.Nombres1=Nombres;
            obj.Apellidos1=Apellidos;
            obj.User=user;
            return obj.InsertarEstudiante(obj,Sección);
        }

        public static DataTable MostrarEstudiante(char Sección){
            return new Estudiante().MostrarEstudiante(Sección);
        }

    }
}