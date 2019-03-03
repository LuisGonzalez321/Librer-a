﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Library.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Inicio de sesión</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/book.ico" />
    <script src="js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="css/sweet-alert.css"/>
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css"/>
    <link rel="stylesheet" href="css/normalize.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/login.css"/>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/main.js"></script> 
</head>
<body class="full-cover-background" style="background-image:url(assets/img/font-login.jpg);">
    <div class="form-container">
        <p class="text-center" style="margin-top: 17px;">
           <i class="zmdi zmdi-account-circle zmdi-hc-5x"></i>
       </p>
       <h4 class="text-center all-tittles" style="margin-bottom: 30px;">inicia sesión con tu cuenta</h4>
       <form runat="server">
            <div class="group-material-login">
              <asp:TextBox runat="server" class="material-login-control" required="" maxlength="70" ID="txt_user"></asp:TextBox>
              <span class="highlight-login"></span>
              <span class="bar-login"></span>
              <asp:Label runat="server"><i class="zmdi zmdi-account"></i> &nbsp; Nombres</asp:Label>
            </div><br/>
            <div class="group-material-login">
              <asp:TextBox runat="server" type="password" class="material-login-control" required="" maxlength="70" ID="txt_pass"/>
              <span class="highlight-login"></span>
              <span class="bar-login"></span>
              <asp:Label runat="server"><i class="zmdi zmdi-lock"></i> &nbsp; Contraseña</asp:Label>
            </div>
            <div class="group-material">
               <asp:DropDownList ID="Tipo_Usuario" AppendDataBoundItems="true" class="material-control-login" runat="server">
                       <asp:ListItem Text="Tipo Usuario" Value="0" />
                       <asp:ListItem Text="Estudiante" Value="1" />
                       <asp:ListItem Text="Docente" Value="2" />
                       <asp:ListItem Text="Personal Administrativo" Value="3" />
                       <asp:ListItem Text="Administrador" Value="4" />
               </asp:DropDownList>
            </div>
            <asp:Button runat="server" class="btn-login" type="submit" Text="Ingresar al sistema" ID="btn_ingresar" OnClick="btn_ingresar_Click"/>
            &nbsp; <i class="zmdi zmdi-arrow-right"></i>
           </form>
    </div>  
</body>
</html>
