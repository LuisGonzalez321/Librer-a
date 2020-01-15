using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class lisprovider : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tabla_proveedor.DataSource=CProveedor.MostrarProveedor();
            tabla_proveedor.DataBind();
        }
    }
}