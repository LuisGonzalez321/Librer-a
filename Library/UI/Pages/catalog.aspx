<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Pages/Site1.Master" AutoEventWireup="true" CodeBehind="catalog.aspx.cs" Inherits="Library.UI.Pages.catalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
            <div class="page-header">
              <h1 class="all-tittles">Sistema bibliotecario <small>Catálogo de libros</small></h1>
            </div>
        </div>
         <div class="container-fluid"  style="margin: 40px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../assets/img/checklist.png" alt="pdf" class="img-responsive center-box" style="max-width: 110px;"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido al catálogo, selecciona una categoría de la lista para empezar, si deseas buscar un libro por nombre o título has click en el icono &nbsp; <i class="zmdi zmdi-search"></i> &nbsp; que se encuentra en la barra superior
                </div>
            </div>
        </div>
        <div class="container-fluid" style="margin: 0 0 50px 0;">
            <h2 class="text-center" style="margin: 0 0 25px 0;">Categorías</h2>
            <ul class="list-unstyled text-center list-catalog-container">
                <li class="list-catalog">Categoría</li>
                <li class="list-catalog">Categoría</li>
                <li class="list-catalog">Categoría</li>
            </ul>
        </div>
        <div id="content" class="container-fluid">
        </div>     
    <script src="../js/addBook.js"></script>

    <script type="text/javascript" runat="server">
        public static void Añadir() {
                 
        }
    </script>
    <style>
        #aaa{
            margin-left:50px;
        }
        #iii {
            margin-left:10px;
        }
    </style>
</asp:Content>
