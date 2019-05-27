<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Yazilim_Yapimi_Donem_Projesi.admin.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Font-Awesome/font-awesome.min.css" rel="stylesheet" />
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Alertify/alertify.min.css" rel="stylesheet" />
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Custom/AdminLogin.css" rel="stylesheet" />
</head>
<body>
    <form id="EWL" runat="server">
        <h1 class="h3 mb-3 font-weight-normal text-light" id="WelcomeMessage">ADMİN PANEL</h1>
        <div class="form-group">
            <input type="text" name="Username" class="form-control" placeholder="Kullanıcı Adı" autofocus>
            <input type="password" name="Password" class="form-control" placeholder="Şifre">
            <button type="button" class="mt-3 btn btn-lg btn-block btn-outline btn-rounded btn-quaternary btn-with-arrow mb-2" onclick="Login('Authorized')">Giriş<span><i class="fa fa-check"></i></span></button>
        </div>
    </form>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/JQuery/jquery-3.4.1.min.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/JQuery-Validation/jquery.validate.min.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Alertify/alertify.min.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/Validation.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/AuthenticationService.js"></script>
</body>
</html>
