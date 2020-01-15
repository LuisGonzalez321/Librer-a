<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="institution.aspx.cs" Inherits="Library.UI.Pages.institution" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <script type="text/javascript">
      function MostrarMensaje(estado){
          if (estado == 1){alert("Institución añadida con exito");}  
          else{alert("Error al ingresar!!");}
      }
  </script>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>Administración Institución</small></h1>
            </div>
        </div>
        <div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
              <li role="presentation" class="active"><a href="admininstitution.php">Institución</a></li>
              <li role="presentation"><a href="provider.aspx">Proveedores</a></li>
              <li role="presentation"><a href="category.aspx">Categorías</a></li>
              <li role="presentation"><a href="section.aspx">Secciones</a></li>
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/institution.png" alt="user" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Guarda los datos de tu institución, una vez almacenados los datos no podrás hacer más registros.
                    Puedes actualizar la información actual, o eliminar el registro completamente y añadir uno nuevo, siempre
                    y cuando no hayas registrado libros.
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Guardar datos de la institución</div>
                <form runat="server" autocomplete="off">
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_Codigo" type="text" CssClass="material-control tooltips-general" placeholder="Código de infraestructura" required="" pattern="[0-9]{1,10}" maxlength="10" data-toggle="tooltip" data-placement="top" title="Solo números, máximo 10 caracteres"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Código infraestructura</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_nombre" type="text" CssClass="material-control tooltips-general" placeholder="Nombre de la institución" required="" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el nombre de la institución"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre de la institución</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_distrito" type="text" CssClass="material-control tooltips-general" placeholder="Distrito de la institución" required="" pattern="[0-9]{1,20}" maxlength="20" data-toggle="tooltip" data-placement="top" title="Solo números, máximo 20 caracteres"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Distrito</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_telefono" type="text" CssClass="material-control tooltips-general" placeholder="Teléfono de la institución" required="" pattern="[0-9]{8,8}" maxlength="8" data-toggle="tooltip" data-placement="top" title="Solo 8 números"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Teléfono</label>
                            </div>
                            <div class="group-material">
                                <asp:TextBox runat="server" ID="txt_anio" type="text" CssClass="material-control tooltips-general" placeholder="Año lectivo" required="" pattern="[0-9]{1,4}" maxlength="4" data-toggle="tooltip" data-placement="top" title="Solo números, máximo 4 caracteres"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Año</label>
                            </div>
                            <p class="text-center">
                                <asp:Button runat="server" ID="btn_limpar" Text="Limpiar" type="reset" CssClass="btn btn-info" style="margin-right: 20px;"/><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp;
                                <asp:Button runat="server" ID="btn_guardar" Text="Guardar" type="submit" CssClass="btn btn-primary" OnClick="btn_guardar_Click"/><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp;
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
