<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="loanpending.aspx.cs" Inherits="Library.UI.Pages.loanpending" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>préstamos y reservaciones</small></h1>
            </div>
        </div>
        <div class="conteiner-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                <li><a href="loan.aspx">Todos los préstamos</a></li>
                <li class="active"><a href="loanpending.aspx">Devoluciones pendientes</a></li>
                <li><a href="loanreservation.aspx">Reservaciones</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/clock.png" alt="calendar" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a esta sección, aquí se muestran todos los préstamos de libros que no han sido devueltos por los docentes y estudiantes
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <h2 class="text-center all-tittles">Listado de devoluciones pendientes</h2>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list" style="background-color:#DFF0D8; font-weight:bold;">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de libro</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de usuario</div>
                        <div class="div-table-cell" style="width: 10%;">Tipo</div>
                        <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                        <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                        <div class="div-table-cell" style="width: 8%;">Recibir</div>
                        <div class="div-table-cell" style="width: 8%;">Ver Ficha</div>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Libro</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Usuario</div>
                        <div class="div-table-cell" style="width: 10%;">Tipo</div>
                        <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                        <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-success"><i class="zmdi zmdi-time-restore"></i></button>
                        </div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-info" ><i class="zmdi zmdi-file-text"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Libro</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Usuario</div>
                        <div class="div-table-cell" style="width: 10%;">Tipo</div>
                        <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                        <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-success"><i class="zmdi zmdi-time-restore"></i></button>
                        </div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-info" ><i class="zmdi zmdi-file-text"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Libro</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Usuario</div>
                        <div class="div-table-cell" style="width: 10%;">Tipo</div>
                        <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                        <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-success"><i class="zmdi zmdi-time-restore"></i></button>
                        </div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-info" ><i class="zmdi zmdi-file-text"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Libro</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Usuario</div>
                        <div class="div-table-cell" style="width: 10%;">Tipo</div>
                        <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                        <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-success"><i class="zmdi zmdi-time-restore"></i></button>
                        </div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-info" ><i class="zmdi zmdi-file-text"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Libro</div>
                        <div class="div-table-cell" style="width: 22%;">Nombre de Usuario</div>
                        <div class="div-table-cell" style="width: 10%;">Tipo</div>
                        <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                        <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-success"><i class="zmdi zmdi-time-restore"></i></button>
                        </div>
                        <div class="div-table-cell" style="width: 8%;">
                            <button class="btn btn-info" ><i class="zmdi zmdi-file-text"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Tabla que muestra los libros pendientes-->
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
