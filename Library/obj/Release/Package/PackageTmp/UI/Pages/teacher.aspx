<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="Library.UI.Pages.teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>Administración Usuarios</small></h1>
            </div>
        </div>
        <div class="conteiner-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                <li role="presentation"><a href="admin.aspx">Administradores</a></li>
                <li role="presentation"  class="active"><a href="teacher.aspx">Docentes</a></li>
                <li role="presentation"><a href="student.aspx">Estudiantes</a></li>
                <li role="presentation"><a href="personal.aspx">Personal administrativo</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/user02.png" alt="user" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar nuevos docentes. Para registrar un docente debes de llenar todos los campos del siguiente formulario, también puedes ver el listado de docentes registrados
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li class="active">Nuevo docente</li>
                      <li><a href="listteacher.aspx">Listado de docentes</a></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Registrar un nuevo docente</div>
                <form autocomplete="off" runat="server">
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_NGUI" type="text" CssClass="material-control tooltips-general" placeholder="Escribe aquí el número de DUI del docente" pattern="[0-9-]{1,10}" required="" maxlength="10" data-toggle="tooltip" data-placement="top" title="Solamente números y guiones, 10 dígitos"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Número de DUI</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_nombres" type="text" CssClass="material-control tooltips-general" placeholder="Escribe aquí los nombres del docente" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,50}" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe los nombres del docente, solamente letras"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombres</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_apellidos" type="text" class="material-control tooltips-general" placeholder="Escribe aquí los apellidos del docente" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,50}" required="" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe los apellidos del docente, solamente letras"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Apellidos</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_telefono" type="text" class="material-control tooltips-general" placeholder="Escribe aquí el número de teléfono del docente" pattern="[0-9]{8,8}" required="" maxlength="8" data-toggle="tooltip" data-placement="top" title="Solamente 8 números"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Teléfono</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_especialidad" type="text" class="material-control tooltips-general" placeholder="Escribe aquí la especialidad del docente" required="" maxlength="40" data-toggle="tooltip" data-placement="top" title="Especialidad del docente"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Especialidad</label>
                            </div>
                           <legend>Turno y Sección encargada</legend>
                            <div class="group-material">
                                <span>Sección encargada</span>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elige la sección encargada del docente">
                                    <asp:ListItem selected="False">Selecciona una sección</asp:ListItem>
                                    <asp:ListItem value="Seccion">Sección</asp:ListItem>
                                    <asp:ListItem value="Seccion">Sección</asp:ListItem>
                                    <asp:ListItem value="Seccion">Sección</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="group-material">
                                <span>Turno</span>
                                <asp:DropDownList ID="DropDownList2" runat="server" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elige el turno que labora el docente">
                                    <asp:ListItem value="Mañana">Mañana</asp:ListItem>
                                    <asp:ListItem value="Tarde">Tarde</asp:ListItem>
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
