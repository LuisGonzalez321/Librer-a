<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="listprovider.aspx.cs" Inherits="Library.UI.Pages.lisprovider" %>
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
                    Bienvenido a la sección donde se encuentra el listado de proveedores de libros. Puedes actualizar o eliminar los datos del proveedor, si hay libros asociados al proveedor no podrás eliminarlo.
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 lead">
                    <ol class="breadcrumb">
                      <li><a href="provider.aspx">Nuevo proveedor</a></li>
                      <li class="active">Listado de proveedores</li>
                    </ol>
                </div>
            </div>
        </div>
         <div class="container-fluid">
     
            <form runat="server" class="pull-left " style="width:100%;" autocomplete="off">
                <div class="group-material" style="width:30% !important;float:right;">
                    <asp:TextBox runat="server" ID="txt_buscarP" type="search" style="display: inline-block !important; width: 70%;" class="material-control tooltips-general" placeholder="Buscar Proveedor" required="" pattern="[a-zA-ZáéíóúÁÉÍÓÚ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe los nombres, sin los apellidos"></asp:TextBox>
                    <button id="btn_buscar" runat="server" class="btn" style="margin: 0; height: 43px; background-color: transparent !important;">
                        <i class="zmdi zmdi-search" style="font-size: 25px;"></i>
                    </button>
                </div>
            <h2 class="text-center all-tittles" style="clear: both; margin: 25px 0;">listado de personal administrativo</h2>
            <div class="row">
                  <div class="col-12">     
                   <asp:GridView ID="tabla_proveedor" CssClass="table table-hover table-sm table-responsive" runat="server" GridLines="None" PageSize="8">
                        <Columns>
                            <asp:ButtonField  HeaderText="Editar">
                            <ControlStyle CssClass="zmdi zmdi-refresh" ForeColor="White" />
                            <ItemStyle BackColor="#5CB85C" CssClass="suss" Width="9%" />
                            </asp:ButtonField>
                            <asp:ButtonField HeaderText="Eliminar">
                            <ControlStyle CssClass="zmdi zmdi-delete " ForeColor="White" />
                            <ItemStyle BackColor="#D9534F" CssClass="dang" Width="9%" />
                            </asp:ButtonField>
                        </Columns>
                           
                        <HeaderStyle BackColor="#DFF0D8" Font-Bold="True" Font-Size="15px" />
                   </asp:GridView> 
            </div>
             </div>
           </form> 
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
