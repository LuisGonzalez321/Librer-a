using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library.Controller {
    public class CTools {
    
           public static int Contador(string value) {
              return new Model.Tools().Contador(value);
           }    
          
    }
}