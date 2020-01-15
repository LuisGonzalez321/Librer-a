<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="Library.UI.Pages.book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>Añadir libro</small></h1>
            </div>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/flat-book.png" alt="pdf" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para agregar nuevos libros a la biblioteca, deberas de llenar todos los campos para poder registrar el libro
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <form runat="server" autocomplete="off">
                <div class="container-flat-form">
                    <div class="title-flat-form title-flat-blue">Nuevo libro</div>
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <legend><strong>Información básica</strong></legend><br/>
                            <div class="group-material">
                                <span>Categoría</span>
                                <br />
                                <asp:DropDownList CssClass="tooltips-general material-control" ID="lista_categoria" runat="server" Width="681px">
                                    <asp:ListItem Value="1">Alimentos</asp:ListItem>
                                    <asp:ListItem>Electrodomesticos</asp:ListItem>
                                </asp:DropDownList>
                               
                            </div>
                            <div class="group-material">
                                <asp:Textbox runat="server" ID="txt_" type="text" class="tooltips-general material-control" placeholder="Escribe aquí el código correlativo del libro" pattern="[0-9]{1,20}" required="" maxlength="20" data-toggle="tooltip" data-placement="top" title="Escribe el código correlativo del libro, solamente números"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Código correlativo</label>
                            </div>
                            <div class="group-material">
                                <asp:Textbox runat="server" type="text" class="tooltips-general material-control" placeholder="Escribe aquí el título o nombre del libro" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el título o nombre del libro"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Título</label>
                            </div>
                            <div class="group-material">
                                <asp:Textbox runat="server" type="text" class="tooltips-general material-control" placeholder="Escribe aquí el autor del libro" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el nombre del autor del libro"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Autor</label>
                            </div>
                            <div class="group-material">
                                <asp:Textbox runat="server" type="text" class="tooltips-general material-control" placeholder="Escribe aquí el país del libro" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el país del libro"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>País</label>
                            </div>
                            <legend><strong>Otros datos</strong></legend><br/>
                            <div class="group-material">
                                <span>Proveedor</span>
                                <asp:DropDownList CssClass="tooltips-general material-control" ID="lista_proveedor" runat="server" Width="681px">
                                    
                                </asp:DropDownList>
                            </div>
                           <div class="group-material">
                                <asp:Textbox runat="server" type="text" class="material-control tooltips-general" placeholder="Escribe aquí el año del libro" required="" pattern="[0-9]{1,4}" maxlength="4" data-toggle="tooltip" data-placement="top" title="Solamente números, sin espacios"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Año</label>
                           </div>
                            <div class="group-material">
                                <asp:Textbox runat="server" type="text" class="material-control tooltips-general" placeholder="Escribe aquí la editorial del libro" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Editorial del libro"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Editorial</label>
                            </div>
                            <div class="group-material">
                                <asp:Textbox runat="server" type="text" class="material-control tooltips-general" placeholder="Escribe aquí la edición del libro" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="Edición del libro"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Edición</label>
                            </div>
                            <div class="group-material">
                                <asp:Textbox runat="server" type="text" CssClass="material-control tooltips-general"  placeholder="Escribe aquí la cantidad de libros que registraras" pattern="[0-9]{1,7}" maxlength="7" title="¿Cuántos libros registraras?"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Ejemplares</label>
                            </div>
                            <legend><strong>Estado físico, ubicación y valor</strong></legend><br/>
                            <div class="group-material">
                                <asp:Textbox runat="server" type="text" CssClass="material-control tooltips-general" placeholder="Escribe aquí la ubicación del libro" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="¿Dónde se ubicara el libro?"></asp:Textbox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Ubicación</label>
                            </div>
                            <div class="group-material">
                                <span>Cargo</span>
          
                                <asp:DropDownList CssClass="tooltips-general material-control" ID="lista_cargo_libro" runat="server" Width="681px">
                                    <asp:ListItem>Selecciona el cargo del libro</asp:ListItem>
                                    <asp:ListItem>Entrega del Ministerio</asp:ListItem>
                                    <asp:ListItem>Donaciones</asp:ListItem>
                                    <asp:ListItem>Compras con fondos propios</asp:ListItem>
                                    <asp:ListItem>Presupuesto Escolar</asp:ListItem>
                                    <asp:ListItem>Otros</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="group-material">
                                <asp:TextBox ID="txt_precio" runat="server" CssClass="material-control tooltips-general" placeholder="Escribe aquí el precio estimado del libro" pattern="[0-9.]{1,7}" MaxLength="7" ></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Estimado</label>
                            </div>
                            <div class="group-material">
                                <span>Estado</span>
                                <asp:DropDownList runat="server" ID="estado_libro" CssClass="tooltips-general material-control" data-toggle="tooltip" data-placement="top" title="Elige el estado del libro">
                                    <asp:ListItem value="">Selecciona el estado del libro</asp:ListItem>
                                    <asp:ListItem value="Bueno">Bueno</asp:ListItem>
                                    <asp:ListItem value="Deteriorado">Deteriorado</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <p class="text-center">
                                <asp:Button runat="server" type="reset" Text="Limpiar"  CssClass="btn btn-info" style="margin-right: 20px;"/><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp;
                                <asp:Button runat="server" type="submit" Text="Guardar" CssClass="btn btn-primary"/><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp;
                            </p>
                       </div>
                   </div>
                </div>
            </form>
        </div>
        <div class="modal fade" tabindex="-1" role="dialog" id="ModalHelp">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center all-tittles">ayuda del sistema</h4>
                </div>
                <div class="modal-body">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore dignissimos qui molestias ipsum officiis unde aliquid consequatur, accusamus delectus asperiores sunt. Quibusdam veniam ipsa accusamus error. Animi mollitia corporis iusto.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="zmdi zmdi-thumb-up"></i> &nbsp; De acuerdo</button>
                </div>
            </div>
          </div>
        </div>
</asp:Content>
