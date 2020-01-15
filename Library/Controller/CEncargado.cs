using Library.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class CEncargado {

        public static bool InsertarEncargado(string Parentesco,string DUI,string Nombre,string Apellido,string telefono) {
            Encargado obj = new Encargado();
            obj.Parentesco1=Parentesco;
            obj.DUI1=DUI;
            obj.NombreE1=Nombre;
            obj.ApellidoE1=Apellido;
            obj.Telefono1=telefono;
            return obj.InsertarEncargado(obj);
        }

    }
}