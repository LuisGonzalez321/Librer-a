<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="Prestamos.aspx.cs" Inherits="Library.UI.Pages.Prestamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>préstamos y reservaciones</small></h1>
            </div>
        </div>
        <div class="conteiner-fluid">
            <ul class="nav nav-tabs nav-justified">
                <li><a href="loan.aspx">Todos los préstamos</a></li>
                <li><a href="loanpending.aspx">Devoluciones pendientes</a></li>
                <li><a href="loanreservation.aspx">Reservaciones</a></li>
                <li><a href="Reservas.aspx">Nueva Reservación</a></li>
                <li class="active"><a href="Prestamos.aspx" style="font-size:15px">Nuevo Prestamo</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/user03.png" alt="user" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar nuevos estudiantes, para poder registrar un estudiante deberás de llenar todos los campos del siguiente formulario
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li class="active">Nuevo estudiante</li>
                      <li><a href="liststudent.aspx">Listado de estudiantes</a></li>
                    </ol>
                </div>

            </div>
        </div>
        <div class="container-fluid">
            <div class="container-flat-form">
                <form autocomplete="off" runat="server">
                <div class="title-flat-form title-flat-blue">Registrar un nuevo estudiante</div>
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                           <legend >Datos del estudiante</legend>
                           <br/><br/>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_NIE" type="text" CssClass="material-control tooltips-general" placeholder="Escribe aquí el NIE del alumno" required="" maxlength="20" data-toggle="tooltip" data-placement="top" title="NIE de estudiante"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>NIE</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_nombres" type="text" CssClass="material-control tooltips-general" placeholder="Escribe aquí los nombres del alumno" required="" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Nombres del estudiante"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombres</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_apellidos" type="text" CssClass="material-control tooltips-general" placeholder="Escribe aquí los apellidos del alumno" required="" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Apellidos del estudiante"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Apellidos</label>
                            </div>
                           <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_email" type="email" class="material-control tooltips-general" placeholder="Email de proveedor" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el Email del proveedor"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Email</label>
                            </div>
                           <div class="group-material">
                               <span>Sección</span>
                               <asp:DropDownList ID="lista_seccion" runat="server" class="material-control tooltips-general" data-toggle="tooltip" data-placement="top" title="Elige la sección a la que pertenece el alumno">
                                   <asp:ListItem value="" selected="False">Selecciona una sección</asp:ListItem>
                                   <asp:ListItem>A</asp:ListItem>
                                   <asp:ListItem>B</asp:ListItem>
                                   <asp:ListItem>C</asp:ListItem>
                                   <asp:ListItem>D</asp:ListItem>
                               </asp:DropDownList>
                            </div>
                            <legend>Datos del encargado</legend>
                            <br/><br/>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_parentesco" type="text" class="material-control tooltips-general" placeholder="Parentesco" required="" pattern="[a-zA-ZéíóúáñÑ ]{1,30}" maxlength="30" data-toggle="tooltip" data-placement="top" title="Parentesco"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Parentesco</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_N_GUI_Encargado" type="text" class="material-control tooltips-general check-representative" placeholder="Escribe aquí el número de DUI del encargado" pattern="[0-9-]{1,10}" required="" maxlength="10" data-toggle="tooltip" data-placement="top" title="Solamente números y guiones, 10 dígitos"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Número de DUI del encargado</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_NombreEncargado" type="text" class="material-control tooltips-general" placeholder="Nombre del encargado" required="" pattern="[a-zA-ZéíóúáñÑ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Nombre del encargado del estudiante"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre del encargado</label>
                            </div>
                           <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_apellidoEncargado" type="text" class="material-control tooltips-general" placeholder="Apellido del encargado" required="" pattern="[a-zA-ZéíóúáñÑ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Apellido del encargado del estudiante"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Apellidos del encargado</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_telefono" type="text" class="material-control tooltips-general" placeholder="Teléfono" pattern="[0-9]{8,8}" required="" maxlength="8" data-toggle="tooltip" data-placement="top" title="Solamente 8 números"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Teléfono</label>
                            </div>
                            <p class="text-center">
                                <asp:Button runat="server" CssClass="clean" id="btn_limpiarE" type="reset" class="btn btn-info" style="margin-right: 20px;" Text="Limpiar"/><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp; 
                                <asp:Button runat="server" type="submit" class="btn btn-primary" Text="Guardar"/><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; 
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
