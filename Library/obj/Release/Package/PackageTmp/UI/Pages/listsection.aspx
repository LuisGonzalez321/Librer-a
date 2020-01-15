<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="listsection.aspx.cs" Inherits="Library.UI.Pages.listsection" %>
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
                    Bienvenido a la sección donde se encuentra el listado de las secciones de la institución, puedes eliminar una sección siempre y cuando no haya alumnos o docentes registrados en ella
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li><a href="section.aspx">Nueva sección</a></li>
                      <li class="active">Listado de secciones</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <h2 class="text-center all-tittles">Lista de secciones</h2>
            <div class="div-table">
                <div class="div-table-row div-table-head">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">Eliminar</div>
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger btn-xs"><i class="zmdi zmdi-delete"></i> &nbsp;&nbsp; Eliminar</button>
                    </div>      
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger btn-xs"><i class="zmdi zmdi-delete"></i> &nbsp;&nbsp; Eliminar</button>
                    </div>      
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger btn-xs"><i class="zmdi zmdi-delete"></i> &nbsp;&nbsp; Eliminar</button>
                    </div>      
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger btn-xs"><i class="zmdi zmdi-delete"></i> &nbsp;&nbsp; Eliminar</button>
                    </div>      
                </div>
                <div class="div-table-row">
                    <div class="div-table-cell">#</div>
                    <div class="div-table-cell">Nombre</div>
                    <div class="div-table-cell">
                        <button class="btn btn-danger btn-xs"><i class="zmdi zmdi-delete"></i> &nbsp;&nbsp; Eliminar</button>
                    </div>      
                </div>
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
