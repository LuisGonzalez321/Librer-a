<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="section.aspx.cs" Inherits="Library.UI.Pages.section" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>Administración Institución</small></h1>
            </div>
        </div>
        <div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
              <li role="presentation"><a href="institution.aspx">Institución</a></li>
              <li role="presentation"><a href="provider.aspx">Proveedores</a></li>
              <li role="presentation"><a href="category.aspx">Categorías</a></li>
              <li role="presentation" class="active"><a href="section.aspx">Secciones</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/section.png" alt="user" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar nuevas secciones al sistema, debes de seleccionar los datos en el siguiente formulario para registrar una sección
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li class="active">Nueva sección</li>
                      <li><a href="listsection.aspx">Listado de secciones</a></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Agregar una nueva sección</div>
                <form runat="server" >
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="group-material">
                                <span>Año</span>

                                <asp:DropDownList ID="DropDownList1" runat="server" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elige el año" >
                                    <asp:ListItem Selected="False">Selecciona una opción</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="group-material">
                                <span>Especialidad</span>

                                 <asp:DropDownList ID="DropDownList2" runat="server" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elige la especialidad" >
                                    <asp:ListItem value="" selected="False">Selecciona una opción</asp:ListItem>
                                    <asp:ListItem value="Asistente.Ad. ">Asistente Ad.</asp:ListItem>
                                    <asp:ListItem value="Contador ">Contador</asp:ListItem>
                                    <asp:ListItem value="Electrotécnia ">Electrotécnia</asp:ListItem>
                                    <asp:ListItem value="General ">General</asp:ListItem>
                                    <asp:ListItem value="Informática ">Informática</asp:ListItem>
                                    <asp:ListItem value="Salud ">Salud</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="group-material">
                                <span>Sección</span>

                                <asp:DropDownList ID="DropDownList3" runat="server" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elige la seccion" >
                                    <asp:ListItem value="" selected="False">Selecciona una opción</asp:ListItem>
                                    <asp:ListItem value="A">A</asp:ListItem>
                                    <asp:ListItem value="B">B</asp:ListItem>
                                    <asp:ListItem value="C">C</asp:ListItem>
                                    <asp:ListItem value="D">D</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <p class="text-center">
                                <button runat="server" id="btn_limpiar" type="reset" class="btn btn-info" style="margin-right: 20px;"><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp; Limpiar</button>
                                <button runat="server" id="btn_guardar" type="submit" class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                            </p> 
                       </div>
                   </div>
                </form>
            </div>
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
