using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class liststudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tabla_estudiantes.DataSource=CEstudiante.MostrarEstudiante('B');
            tabla_estudiantes.DataBind();
        }

        protected void li_1_Click(object sender, EventArgs e) {
            tabla_estudiantes.DataSource=CEstudiante.MostrarEstudiante('A');
            tabla_estudiantes.DataBind();
        }

        protected void li_2_Click(object sender, EventArgs e) {
            tabla_estudiantes.DataSource=CEstudiante.MostrarEstudiante('B');
            tabla_estudiantes.DataBind();
        }

        protected void li_3_Click(object sender, EventArgs e) {
            tabla_estudiantes.DataSource=CEstudiante.MostrarEstudiante('C');
            tabla_estudiantes.DataBind();
        }

        protected void li_4_Click(object sender, EventArgs e) {
            tabla_estudiantes.DataSource=CEstudiante.MostrarEstudiante('D');
            tabla_estudiantes.DataBind();
        }
    }
}