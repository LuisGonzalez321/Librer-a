using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Default : System.Web.UI.Page{

        public static int user;
        public static string rol;

        public static string Rol{
             get{ return rol; }
             set { rol = value; }
        }

        public static int User {
            get{ return user; }
            set{ user = value;}
        }

        protected void Page_Load(object sender, EventArgs e){
           
        }

        protected void btn_ingresar_Click(object sender, EventArgs e){
            if (txt_user.Text.Length > 0 && txt_pass.Text.Length > 0){
                User +=  Controller.CAdmin.Ingreso(txt_user.Text,txt_pass.Text,Tipo_Usuario.SelectedItem.ToString());
                rol += Tipo_Usuario.SelectedItem.ToString();
                if (User > 0){
                    Response.Redirect("UI/Pages/Home.aspx"); 
                }
                else{
                    btn_ingresar.Attributes.Add("OnClick", "javascript:show_M(); ");
                }
            }else {/*if(Tipo_Usuario.SelectedItem.ToString() == "Tipo Usuario"){
                btn_ingresar.Attributes.Add("OnClick", "javascript:show_M(); ");*/
            }
        }
    }
}