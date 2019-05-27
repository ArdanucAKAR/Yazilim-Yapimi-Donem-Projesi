<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Yazilim_Yapimi_Donem_Projesi.Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Font-Awesome/font-awesome.min.css" rel="stylesheet" />
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Alertify/alertify.min.css" rel="stylesheet" />
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Custom/MemberLogin.css" rel="stylesheet" />
</head>
<body>
    <form id="EWL" runat="server">
        <div class="form-group">
            <img class="mb-4 logo" src="asset/img/logo.jpg" alt="EWL Logo" />
            <h1 class="h3 mb-3 font-weight-normal text-light" id="WelcomeMessage">HOŞGELDİNİZ</h1>
            <div id="SignIn">
                <input type="text" name="Username" class="form-control" placeholder="Kullanıcı Adı" autofocus>
                <input type="password" name="Password" class="form-control" placeholder="Şifre">
                <button type="button" class="mt-3 btn btn-lg btn-block btn-outline btn-rounded btn-quaternary btn-with-arrow mb-2" onclick="Login('Member')">Giriş<span><i class="fa fa-check"></i></span></button>
            </div>
            <div id="SignUp">
                <input type="text" name="suName" class="form-control mt-2" placeholder="Adınız" autofocus>
                <input type="text" name="suSurname" class="form-control mt-2" placeholder="Soyadınız">
                <input type="text" name="suUsername" class="form-control mt-2" placeholder="Kullanıcı Adı">
                <input type="password" name="suPassword" class="form-control mt-2" placeholder="Şifre">
                <select class="form-control mt-2" name="suLanguages"></select>
                <button type="button" class="mt-3 btn btn-lg btn-block btn-outline btn-rounded btn-quaternary btn-with-arrow mb-2" onclick="SignUp()">Üye Ol<span><i class="fa fa-check"></i></span></button>
            </div>
            <button id="btnSingUp" type="button" class="mt-5 btn btn-outline btn-rounded btn-singup btn-with-arrow mb-2">Üye Ol<span><i class="fa fa-user-plus"></i></span></button>
        </div>

        <p class="mt-5 mb-3 text-muted">Created By <a class="createdBy" href="https://github.com/ArdanucAKAR" target="_blank">Ardanuc AKAR</a> - <a class="createdBy" href="https://github.com/ulasgokce" target="_blank">Ulaş GÖKÇE</a></p>
    </form>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/JQuery/jquery-3.4.1.min.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/JQuery-Validation/jquery.validate.min.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Alertify/alertify.min.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/Validation.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/AuthenticationService.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/MemberLogin.js"></script>
</body>
</html>
