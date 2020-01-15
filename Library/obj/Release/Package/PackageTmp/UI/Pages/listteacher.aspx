<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="listteacher.aspx.cs" Inherits="Library.UI.Pages.listteacher" %>
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
                    Bienvenido a la sección donde se encuentra el listado de docentes registrados en el sistema, puedes actualizar algunos datos de los docentes o eliminar el registro completo del docente siempre y cuando no tenga préstamos asociados.<br>
                    <strong class="text-danger"><i class="zmdi zmdi-alert-triangle"></i> &nbsp; ¡Importante! </strong>Si eliminas el docente del sistema se borrarán todos los datos relacionados con él, incluyendo préstamos y registros en la bitácora.
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                        <li><a href="teacher.aspx">Nuevo docente</a></li>
                        <li class="active">listado de docentes</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <form runat="server" class="pull-right" style="width: 30% !important;" autocomplete="off">
                <div class="group-material">
                    <asp:TextBox runat="server" ID="txt_buscaMaestro" type="search" style="display: inline-block !important; width: 70%;" class="material-control tooltips-general" placeholder="Buscar docente" required="" pattern="[a-zA-ZáéíóúÁÉÍÓÚ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe los nombres, sin los apellidos"></asp:TextBox>
                    <button id="btn_buscar" class="btn" style="margin: 0; height: 43px; background-color: transparent !important;">
                        <i class="zmdi zmdi-search" style="font-size: 25px;"></i>
                    </button>
                </div>
            </form>
            <h2 class="text-center all-tittles" style="clear: both; margin: 25px 0;">Listado de docentes</h2>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list" style="background-color:#DFF0D8; font-weight:bold;">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 15%;">DUI</div>
                        <div class="div-table-cell" style="width: 15%;">Sección</div>
                        <div class="div-table-cell" style="width: 15%;">Apellidos</div>
                        <div class="div-table-cell" style="width: 15%;">Nombres</div>
                        <div class="div-table-cell" style="width: 12%;">Teléfono</div>
                        <div class="div-table-cell" style="width: 9%;">Actualizar</div>
                        <div class="div-table-cell" style="width: 9%;">Eliminar</div>
                    </div>
                </div>
                <div class="table-responsive">
                    <div class="div-table" style="margin:0 !important;">
                        <div class="div-table-row div-table-row-list">
                            <div class="div-table-cell" style="width: 6%;">#</div>
                            <div class="div-table-cell" style="width: 15%;">DUI</div>
                            <div class="div-table-cell" style="width: 15%;">Sección</div>
                            <div class="div-table-cell" style="width: 15%;">Apellidos</div>
                            <div class="div-table-cell" style="width: 15%;">Nombres</div>
                            <div class="div-table-cell" style="width: 12%;">Teléfono</div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                            </div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <div class="div-table" style="margin:0 !important;">
                        <div class="div-table-row div-table-row-list">
                            <div class="div-table-cell" style="width: 6%;">#</div>
                            <div class="div-table-cell" style="width: 15%;">DUI</div>
                            <div class="div-table-cell" style="width: 15%;">Sección</div>
                            <div class="div-table-cell" style="width: 15%;">Apellidos</div>
                            <div class="div-table-cell" style="width: 15%;">Nombres</div>
                            <div class="div-table-cell" style="width: 12%;">Teléfono</div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                            </div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <div class="div-table" style="margin:0 !important;">
                        <div class="div-table-row div-table-row-list">
                            <div class="div-table-cell" style="width: 6%;">#</div>
                            <div class="div-table-cell" style="width: 15%;">DUI</div>
                            <div class="div-table-cell" style="width: 15%;">Sección</div>
                            <div class="div-table-cell" style="width: 15%;">Apellidos</div>
                            <div class="div-table-cell" style="width: 15%;">Nombres</div>
                            <div class="div-table-cell" style="width: 12%;">Teléfono</div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                            </div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <div class="div-table" style="margin:0 !important;">
                        <div class="div-table-row div-table-row-list">
                            <div class="div-table-cell" style="width: 6%;">#</div>
                            <div class="div-table-cell" style="width: 15%;">DUI</div>
                            <div class="div-table-cell" style="width: 15%;">Sección</div>
                            <div class="div-table-cell" style="width: 15%;">Apellidos</div>
                            <div class="div-table-cell" style="width: 15%;">Nombres</div>
                            <div class="div-table-cell" style="width: 12%;">Teléfono</div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                            </div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <div class="div-table" style="margin:0 !important;">
                        <div class="div-table-row div-table-row-list">
                            <div class="div-table-cell" style="width: 6%;">#</div>
                            <div class="div-table-cell" style="width: 15%;">DUI</div>
                            <div class="div-table-cell" style="width: 15%;">Sección</div>
                            <div class="div-table-cell" style="width: 15%;">Apellidos</div>
                            <div class="div-table-cell" style="width: 15%;">Nombres</div>
                            <div class="div-table-cell" style="width: 12%;">Teléfono</div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                            </div>
                            <div class="div-table-cell" style="width: 9%;">
                                <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Tabla que Muestra Docentes-->
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
