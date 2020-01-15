using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            addCantidad();
        }

        public void addCantidad() {
            ADMINISTRADORES.InnerText += AsignarCantidad(ADMINISTRADORES.ID);
            ESTUDIANTES.InnerText += AsignarCantidad(ESTUDIANTES.ID);
            DOCENTES.InnerText += AsignarCantidad(DOCENTES.ID);
            PERSONAL_ADMINISTRATIVO.InnerText += AsignarCantidad(PERSONAL_ADMINISTRATIVO.ID);
            PROVEEDORES.InnerText += AsignarCantidad(PROVEEDORES.ID);
            LIBROS.InnerText += AsignarCantidad(LIBROS.ID);
            CATEGORÍAS.InnerText += AsignarCantidad(CATEGORÍAS.ID);
            SECCIONES.InnerText += AsignarCantidad(SECCIONES.ID);
            RESERVACIONES.InnerText += AsignarCantidad(RESERVACIONES.ID);
            DEVOLUCIONES_PENDIENTES.InnerText += AsignarCantidad(DEVOLUCIONES_PENDIENTES.ID);
            PRESTAMOS.InnerText += AsignarCantidad(PRESTAMOS.ID);
        }
       
       private int AsignarCantidad(string id) {
           int cantidad= Controller.CTools.Contador(id);
            if (cantidad > 0) {
                return cantidad;
            }else if (cantidad == 0) {
                return 0;
            }
            return 0;
       }

    }
}