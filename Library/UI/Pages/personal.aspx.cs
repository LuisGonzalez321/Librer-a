using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class personal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_guardar_Click(object sender, EventArgs e) {
            bool estado = Controller.CPersonalAdmin.InsertarPersonalAdmin(txt_DUI.Text,txt_Nombre.Text,txt_Apellidos.Text,txt_Teléfono.Text,txt_dirección.Text,txt_Cargo.Text);
            if (estado) {
                btn_guardar.Attributes.Add("OnClick1", "javascript:MostrarMensaje(1);");   
            }else {
                btn_guardar.Attributes.Add("OnClick1", "javascript:MostrarMensaje(0);");
            }
        }
    }
}