using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class section : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_guarda_Click(object sender, EventArgs e) {
            string especialidad=lista_especialidad.SelectedItem.Text, seccion=lista_seccion.SelectedItem.Text;
            int año = Convert.ToInt32(lista_año.SelectedItem.Text);
            bool i = DSección.InsertarSección(año,especialidad,Convert.ToChar(seccion));
            if (i) {
                Response.Redirect("Home.aspx");
            } else {
    
            }
        }
    }
}