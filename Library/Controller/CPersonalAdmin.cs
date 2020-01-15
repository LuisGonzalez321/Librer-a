using Library.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class CPersonalAdmin {

        public static bool InsertarPersonalAdmin(string no_DUI, string nombres, string apellidos, string teléfono, string dirección, string Cargo) {
            Model.PersonalAdmin Obj = new Model.PersonalAdmin();
            Obj.No_DUI1=no_DUI;
            Obj.Nombres1=nombres;
            Obj.Apellidos1=apellidos;
            Obj.Teléfono1=teléfono;
            Obj.Dirección1=dirección;
            Obj.Cargo1=Cargo;
            return Obj.Insertar(Obj);
        }

        public static DataTable Mostrar() {
            return new PersonalAdmin().Mostrar();
        }

        public static string NombrePersonal(int id) {
           return new PersonalAdmin().MostrarPersonal(id);
        }
    }
}