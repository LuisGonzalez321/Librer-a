<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="listadmin.aspx.cs" Inherits="Library.UI.Pages.listadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form id="form1" runat="server">

     <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>Administración Usuarios</small></h1>
            </div>
        </div>
        <div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
              <li role="presentation"  class="active"><a href="admin.html">Administradores</a></li>
                <li role="presentation"><a href="teacher.html">Docentes</a></li>
                <li role="presentation"><a href="student.html">Estudiantes</a></li>
                <li role="presentation"><a href="personal.html">Personal administrativo</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="assets/img/user01.png" alt="user" class="img-responsive center-box" style="max-width: 110px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección donde se encuentra el listado de los administradores, puedes desactivar la cuenta de cualquier administrador o eliminar los datos si no hay préstamos asociados a la cuenta
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                        <li><a href="admin.html">Nuevo administrador</a></li>
                        <li class="active">listado de administradores</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <h2 class="text-center all-tittles">Lista de administradores</h2>
            <div class="div-table">
                
             
                <asp:GridView class="div-table-row div-table-head" ID="GridView1" runat="server" Width="730px">
                    <Columns>
                        <asp:BoundField HeaderText="#" ReadOnly="True" />
                        <asp:BoundField HeaderText="Nombre" ReadOnly="True" />
                        <asp:BoundField HeaderText="Nombre de Usuario" ReadOnly="True" />
                        <asp:BoundField HeaderText="Email" ReadOnly="True" />
                        <asp:BoundField HeaderText="Estado" />
                        <asp:ImageField HeaderText="Cambiar E." >
                        </asp:ImageField>
                        <asp:ImageField HeaderText="Actualizar">
                        </asp:ImageField>
                        <asp:ImageField HeaderText="Eliminar">
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                
             
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

     </form>

</asp:Content>
