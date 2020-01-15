using Library.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class CProveedor {

        public static bool InsertarProveedor(string Nombre_Proveedor, string Email, string Dirección,string Teléfono,int Id) {
            Proveedor obj = new Proveedor();
            obj.Nombre_Proveedor1=Nombre_Proveedor;
            obj.Email1=Email;
            obj.Dirección1=Dirección;
            obj.Teléfono1=Teléfono;
            return obj.InsertarProveedor(obj,Id);
        }

        public static DataTable MostrarProveedor() {
            return new Proveedor().MostrarProveedor();
        }

        public static DataTable MostrarListaProveedor() {
            return new Proveedor().MostrarListaProveedor();
        }


    }
}