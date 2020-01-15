using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class listteacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tabla_docente.DataSource=CDocente.MostrarDocente();
            tabla_docente.DataBind();
        }
    }
}