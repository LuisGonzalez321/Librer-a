﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Library.UI.Pages.category" %>
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
              <li role="presentation"><a href="admininstitution.php">Institución</a></li>
              <li role="presentation"><a href="provider.aspx">Proveedores</a></li>
              <li role="presentation" class="active"><a href="category.aspx">Categorías</a></li>
              <li role="presentation"><a href="section.aspx">Secciones</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/category.png" alt="user" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar nuevas categorías de libros, debes de llenar el siguiente formulario para registrar una categoría
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li class="active">Nueva categoría</li>
                      <li><a href="listcategory.aspx">Listado de categorías</a></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Agregar una nueva categoría</div>
                <form autocomplete="off" runat="server">
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="group-material">
                                <asp:TextBox runat="server" CssClass="material-control tooltips-general" placeholder="Escribe aquí el código de categoría"  required="" pattern="[0-9]{1,20}" maxlength="20" data-toggle="tooltip" data-placement="top" title="Solo números, máximo 20 caracteres"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Código de categoría</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" type="text" CssClass="material-control tooltips-general" placeholder="Escribe aquí el nombre de la categoría" required="" pattern="[a-zA-z0-9áéíóúÁÉÍÓÚñÑ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el nombre de la categoría"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre</label>
                            </div>
                            <p class="text-center">
                                <asp:Button runat="server" Text="Limpiar" type="reset" class="btn btn-info" style="margin-right: 20px;"/><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp;
                                <asp:Button runat="server" Text="Guardar" type="submit" class="btn btn-primary"/><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp;
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
