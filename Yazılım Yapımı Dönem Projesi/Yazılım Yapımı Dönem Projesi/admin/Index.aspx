<%@ Page Title="" Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Yazilim_Yapimi_Donem_Projesi.admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS" runat="server">
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/asset/app-assets/vendors/css/forms/selects/select2.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="container mt-5">
        <section id="Home">
            <div class="row justify-content-center">
                <div class="col-xl-3 col-lg-6 col-12">
                    <div class="card pull-up">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="text-dark" id="WordCount"></h3>
                                        <h6>Kelime Sayısı</h6>
                                    </div>
                                    <div>
                                        <i class="fa fa-wordpress text-dark fa-3x float-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-12">
                    <div class="card pull-up">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="text-dark" id="MemberCount"></h3>
                                        <h6>Üye Sayısı</h6>
                                    </div>
                                    <div>
                                        <i class="fa fa-user text-dark fa-3x float-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row justify-content-center">
                <h3 class="col-12 text-center">Kelime İşlemleri</h3>
                <a class="col-xl-3 col-lg-6 col-12" href="#" onclick="AddWord()">
                    <div class="card pull-up">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="text-dark mt-1">Ekle</h3>
                                    </div>
                                    <div>
                                        <i class="fa fa-wordpress text-dark fa-3x"></i>
                                        <i class="fa fa-plus text-dark fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a class="col-xl-3 col-lg-6 col-12" href="#" onclick="DeleteWord()">
                    <div class="card pull-up">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="text-dark mt-1">Sil</h3>
                                    </div>
                                    <div>
                                        <i class="fa fa-wordpress text-dark fa-3x"></i>
                                        <i class="fa fa-remove text-dark fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <a class="col-xl-3 col-lg-6 col-12" href="#" onclick="UpdateWord()">
                    <div class="card pull-up">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h3 class="text-dark mt-1">Güncelle</h3>
                                    </div>
                                    <div>
                                        <i class="fa fa-wordpress text-dark fa-3x"></i>
                                        <i class="fa fa-wrench text-dark fa-3x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </section>
        <section id="AddWord">
            <div class="text-center">
                <button name="Home" type="button" class="btn btn-lg btn-dark mb-4" onclick="HomePage()"><i class="fa fa-home"></i></button>
            </div>
            <div class="form-group">
                <input type="text" name="addWord_Word" class="form-control mb-2" placeholder="Kelime">
                <input type="text" name="addWord_Meaning" class="form-control mb-2" placeholder="Anlamı">
                <select name="addWord_Languages" class="form-control w-100"></select>
                <button name="Add" type="button" class="btn btn-lg btn-success mt-2">Ekle</button>
            </div>
        </section>
        <section id="DeleteWord">
            <div class="text-center">
                <button name="Home" type="button" class="btn btn-lg btn-dark mb-4" onclick="HomePage()"><i class="fa fa-home"></i></button>
            </div>
            <div class="form-group">
                <select name="deleteWord_Words" class="form-control"></select>
                <button name="Delete" type="button" class="btn btn-lg btn-success mt-2">Sil</button>
            </div>
        </section>
        <section id="UpdateWord">
            <div class="text-center">
                <button name="Home" type="button" class="btn btn-lg btn-dark mb-4" onclick="HomePage()"><i class="fa fa-home"></i></button>
            </div>
            <div class="form-group">
                <select name="updateWord_Words" class="form-control w-100"></select>
                <br /><br />
                <select name="updateWord_Languages" class="form-control w-100" disabled></select>
                <input type="text" name="updateWord_Word" class="form-control mt-2 mb-2" placeholder="Kelime">
                <input type="text" name="updateWord_Meaning" class="form-control mb-2" placeholder="Anlamı">
                <button name="Update" type="button" class="btn btn-lg btn-success">Güncelle</button>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphJS" runat="server">
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/JQuery-Validation/jquery.validate.min.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/AdminWordOperations.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/app-assets/vendors/js/forms/select/select2.full.min.js" type="text/javascript"></script>
</asp:Content>
