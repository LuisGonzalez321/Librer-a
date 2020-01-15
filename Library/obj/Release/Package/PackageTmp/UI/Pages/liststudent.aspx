﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="liststudent.aspx.cs" Inherits="Library.UI.Pages.liststudent" %>
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
                <li role="presentation"><a href="teacher.aspx">Docentes</a></li>
                <li role="presentation" class="active"><a href="student.aspx">Estudiantes</a></li>
                <li role="presentation"><a href="personal.aspx">Personal administrativo</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/user03.png" alt="user" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección donde se encuentra el listado de estudiantes de la institución, podrás buscar los estudiantes por sección o nombre. Puedes actualizar o eliminar los datos del estudiante.<br>
                    <strong class="text-danger"><i class="zmdi zmdi-alert-triangle"></i> &nbsp; ¡Importante! </strong>Si eliminas el estudiante del sistema se borrarán todos los datos relacionados con él, incluyendo préstamos y registros en la bitácora.
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                        <li><a href="student.aspx">Nuevo estudiante</a></li>
                        <li class="active">Listado de estudiantes</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container-fluid" style="margin: 0 0 50px 0;">
            <form class="pull-right" style="width: 30% !important;" autocomplete="off">
                <div class="group-material">
                    <asp:TextBox runat="server" ID="txt_buscarEstudiante" type="search" style="display: inline-block !important; width: 70%;" class="material-control tooltips-general" placeholder="Buscar estudiante" required="" pattern="[a-zA-ZáéíóúÁÉÍÓÚ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe los nombres, sin los apellidos"></asp:TextBox>
                    <button class="btn" style="margin: 0; height: 43px; background-color: transparent !important;">
                        <i class="zmdi zmdi-search" style="font-size: 25px;"></i>
                    </button>
                </div>
            </form>
            <h2 class="text-center all-tittles" style="margin: 25px 0; clear: both;">Secciones</h2>
            <ul class="list-unstyled text-center list-catalog-container">
                <li class="list-catalog">Sección</li>
                <li class="list-catalog">Sección</li>
                <li class="list-catalog">Sección</li>
                <li class="list-catalog">Sección</li>
                <!--Lista de Estudiantes por Secciones-->
            </ul>
        </div>
        <div class="container-fluid">
            <h2 class="text-center all-tittles">Listado de Estudiantes</h2>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list" style="background-color:#DFF0D8; font-weight:bold;">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 18%;">NIE</div>
                        <div class="div-table-cell" style="width: 18%;">Apellidos</div>
                        <div class="div-table-cell" style="width: 18%;">Nombres</div>
                        <div class="div-table-cell" style="width: 18%;">Sección</div>
                        <div class="div-table-cell" style="width: 9%;">Actualizar</div>
                        <div class="div-table-cell" style="width: 9%;">Eliminar</div>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 18%;">NIE</div>
                        <div class="div-table-cell" style="width: 18%;">Apellidos</div>
                        <div class="div-table-cell" style="width: 18%;">Nombres</div>
                        <div class="div-table-cell" style="width: 18%;">Sección</div>
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
                        <div class="div-table-cell" style="width: 18%;">NIE</div>
                        <div class="div-table-cell" style="width: 18%;">Apellidos</div>
                        <div class="div-table-cell" style="width: 18%;">Nombres</div>
                        <div class="div-table-cell" style="width: 18%;">Sección</div>
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
                        <div class="div-table-cell" style="width: 18%;">NIE</div>
                        <div class="div-table-cell" style="width: 18%;">Apellidos</div>
                        <div class="div-table-cell" style="width: 18%;">Nombres</div>
                        <div class="div-table-cell" style="width: 18%;">Sección</div>
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
                        <div class="div-table-cell" style="width: 18%;">NIE</div>
                        <div class="div-table-cell" style="width: 18%;">Apellidos</div>
                        <div class="div-table-cell" style="width: 18%;">Nombres</div>
                        <div class="div-table-cell" style="width: 18%;">Sección</div>
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
                        <div class="div-table-cell" style="width: 18%;">NIE</div>
                        <div class="div-table-cell" style="width: 18%;">Apellidos</div>
                        <div class="div-table-cell" style="width: 18%;">Nombres</div>
                        <div class="div-table-cell" style="width: 18%;">Sección</div>
                        <div class="div-table-cell" style="width: 9%;">
                            <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                        </div>
                        <div class="div-table-cell" style="width: 9%;">
                            <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Tabla de Estudiantes por Sección -->
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