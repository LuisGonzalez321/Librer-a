<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="provider.aspx.cs" Inherits="Library.UI.Pages.provider" %>
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
              <li role="presentation" class="active"><a href="provider.aspx">Proveedores</a></li>
              <li role="presentation"><a href="category.aspx">Categorías</a></li>
              <li role="presentation"><a href="section.aspx">Secciones</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/user04.png" alt="user" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar un nuevo proveedor, debes de llenar todos los campos del siguiente formulario para poder registrar un proveedor
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li class="active">Nuevo proveedor</li>
                      <li><a href="listprovider.aspx">Listado de proveedores</a></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Agregar un nuevo proveedor</div>
                <form autocomplete="off" runat="server">
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_NombreProveedor" type="text" class="material-control tooltips-general" placeholder="Nombre de proveedor" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el nombre del proveedor"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre del proveedor</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_email" type="email" class="material-control tooltips-general" placeholder="Email de proveedor" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el Email del proveedor"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Email</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_direccion" type="text" class="material-control tooltips-general" placeholder="Dirección de proveedor" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe la dirección del proveedor"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Dirección</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_telefono" type="text" class="material-control tooltips-general" placeholder="Teléfono de proveedor" required="" pattern="[0-9]{8,8}" maxlength="8" data-toggle="tooltip" data-placement="top" title="Solo números, mínimo 8 dígitos"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Teléfono</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_responsble" type="text" class="material-control tooltips-general" placeholder="Responsable de atención" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="Responsable de atención"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Responsable de atención</label>
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
