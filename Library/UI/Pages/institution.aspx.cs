using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class institution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_guardar_Click(object sender, EventArgs e) {
            bool estado = CInstitución.Insertar(Convert.ToInt32(txt_Codigo.Text), txt_nombre.Text, txt_distrito.Text, txt_telefono.Text, Convert.ToInt32(txt_anio.Text));
            if (estado) {
                btn_guardar.Attributes.Add("OnClick", "javascript:MostrarMensaje(1); ");
            } else {
                btn_guardar.Attributes.Add("OnClick", "javascript:MostrarMensaje(0); ");
            }
              
        }
    }
}