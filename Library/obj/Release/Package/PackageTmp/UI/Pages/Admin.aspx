<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Library.UI.Pages.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>Administración Usuarios</small></h1>
            </div>
        </div>
       <div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                <li role="presentation"  class="active"><a href="admin.aspx">Administradores</a></li>
                <li role="presentation"><a href="teacher.aspx">Docentes</a></li>
                <li role="presentation"><a href="student.aspx">Estudiantes</a></li>
                <li role="presentation"><a href="personal.aspx">Personal administrativo</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/user01.png" alt="user" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar nuevos administradores del sistema, debes de llenar todos los campos del siguiente formulario para registrar un administrador
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li class="active">Nuevo administrador</li>
                      <li><a href="listadmin.aspx">Listado de administradores</a></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Registrar un nuevo administrador</div>
                <form autocomplete="off" runat="server">
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="group-material">
                                <asp:TextBox runat="server" class="material-control tooltips-general" placeholder="Nombre completo" required="" maxlength="70" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,70}" data-toggle="tooltip" data-placement="top" title="Escribe el nombre del administrador"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre completo</label>
                            </div>
                           <div class="group-material">
                                <asp:TextBox runat="server" type="text" class="material-control tooltips-general input-check-user" placeholder="Nombre de usuario" required="" maxlength="20" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]{1,20}" data-toggle="tooltip" data-placement="top" title="Escribe un nombre de usuario sin espacios, que servira para iniciar sesión"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre de usuario</label>
                           </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" type="email" class="material-control tooltips-general" placeholder="E-mail"  maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el Email del administrador"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Email</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" type="password" class="material-control tooltips-general" placeholder="Contraseña" required="" maxlength="200" data-toggle="tooltip" data-placement="top" title="Escribe una contraseña"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Contraseña</label>
                            </div>
                           <div class="group-material">
                                <asp:TextBox runat="server" type="password" class="material-control tooltips-general" placeholder="Repite la contraseña" required="" maxlength="200" data-toggle="tooltip" data-placement="top" title="Repite la contraseña"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Repetir contraseña</label>
                           </div>
                            <p class="text-center">
                                <asp:Button runat="server" type="reset" class="btn btn-info" style="margin-right: 20px;" Text="Limpiar" ID="btn_limpiar"/><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp;
                                <asp:Button runat="server" type="submit" class="btn btn-primary" Text="Guardar" ID="btn_guardar"/><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp;
                            </p> 
                       </div>
                   </div>
                </form>
            </div>
        </div>
</asp:Content>
