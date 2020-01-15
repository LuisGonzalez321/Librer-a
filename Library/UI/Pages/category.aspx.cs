using Library.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_guardar_Click(object sender, EventArgs e) {
            bool flag = CCategoría.InsertarCategoría(txt_nombre.Text,txt_cod.Text);
            if(flag) {
                Response.Redirect("Home.aspx");
            }
        }
    }
}