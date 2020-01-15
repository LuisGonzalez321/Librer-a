using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        public static int Id = Default.User;


        public static int Id1 {
            get { return Id;}
            set { Id=value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Mostrar_Nombre();
            OcultarElementos(Default.Rol);
        }

        public void Mostrar_Nombre() {
            NOMBRE.InnerText += new Model.Admin().get_name(Default.Rol,Default.User);
        }

        public void OcultarElementos(string Rol) {
            if (Rol=="Estudiante") {
                Administración.Visible=false;
                Registro_User.Visible=false;
                libro.Visible=false;
            } else if (Rol=="Docente") {
                Administración.Visible=false;
                Registro_User.Visible=false;
                libro.Visible=false;
            } else if (Rol=="Personal Administrativo") {
               
            } else if (Rol=="Administrador") {
                
            }
        }

    }
}