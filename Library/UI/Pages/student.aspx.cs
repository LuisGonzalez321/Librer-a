using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class student : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            btn_guardarE.Attributes.Add("onClick", "javascript:errorEmail();");
        }

        protected void btn_guardarE_Click(object sender, EventArgs e) {
            char sección = Convert.ToChar(lista_seccion.SelectedValue.ToString());
            bool flag=true;//= CEstudiante.InsertarEstudiante(txt_NIE.Text,txt_nombres.Text,txt_apellidos.Text,txt_email.Text,sección);
            bool flag2=false;// = CEncargado.InsertarEncargado(txt_parentesco.Text,txt_N_GUI_Encargado.Text,txt_NombreEncargado.Text,txt_apellidoEncargado.Text,txt_telefono.Text);

            if (flag && flag2) {
                Response.Redirect("Home.aspx");
            }else {
              
            }
        }
    }
}