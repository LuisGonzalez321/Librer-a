using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class provider : System.Web.UI.Page
    {
        public int Id = UI.Site1.Id1;

        protected void Page_Load(object sender, EventArgs e)
        {
            txt_responsble.Text="";
            txt_responsble.Text=CPersonalAdmin.NombrePersonal(Id);
            txt_responsble.ReadOnly=true;
        }

        protected void btn_guardarP_Click(object sender, EventArgs e) {
            bool flag = CProveedor.InsertarProveedor(txt_NombreProveedor.Text,txt_email.Text,txt_direccion.Text,txt_telefono.Text,Id);
            if(flag) {
                Response.Redirect("Home.aspx");
            }
        }
    }
}