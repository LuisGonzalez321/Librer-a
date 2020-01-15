using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_guardard_Click(object sender, EventArgs e) {
            bool flag = CDocente.InsertarDocente(Convert.ToInt32(txt_NGUI.Text),txt_nombres.Text,txt_apellidos.Text,txt_telefono.Text,txt_dirección.Text,txt_especialidad.Text,lista_turno.SelectedItem.Text,lista_sección.SelectedItem.Text);
            if (flag) {
                
            }
        }
    }
}