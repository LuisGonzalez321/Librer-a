using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class listpersonal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tabla_personal.DataSource=Controller.CPersonalAdmin.Mostrar();
            tabla_personal.DataBind();
        }
    }
}