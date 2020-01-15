using Library.Controller;
using Library.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.UI.Pages
{
    public partial class book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e){

            lista_proveedor.DataSource=CProveedor.MostrarListaProveedor();
            lista_proveedor.DataTextField="Nombre_Proveedor";
            lista_proveedor.DataBind();

            lista_categoria.DataSource=CCategoría.MostrarListaCategoría();
            lista_categoria.DataTextField="Nombre";
            lista_categoria.DataBind();

        }

        protected void btn_insertarLibro_Click(object sender, EventArgs e) {
            Libro libro = new Libro(lista_categoria.SelectedItem.Text,txt_codigo.Text,txt_titulo.Text,txt_autor.Text,txt_pais.Text,lista_proveedor.SelectedItem.Text,Convert.ToInt32(txt_año.Text),txt_editorial.Text,txt_edición.Text,Convert.ToInt32(txt_ejemplares.Text),txt_ubicación.Text,lista_cargo_libro.SelectedItem.Text,Convert.ToDouble(txt_precio.Text),estado_libro.SelectedItem.Text);
            bool flag = CLibro.InsertarLibro(libro);
            if(flag) {
                Response.Redirect("Home.aspx");
            }
        }
    }
}