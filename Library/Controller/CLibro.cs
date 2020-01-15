using Library.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class CLibro {
      
          public static bool InsertarLibro(Libro libro) {
                return new Libro().InsertarLibro(libro);          
          }
       
          

    }
}