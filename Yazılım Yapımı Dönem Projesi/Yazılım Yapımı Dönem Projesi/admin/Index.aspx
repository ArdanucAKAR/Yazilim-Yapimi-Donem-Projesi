<%@ Page Title="" Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Yazilim_Yapimi_Donem_Projesi.admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS" runat="server">
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/asset/app-assets/vendors/css/forms/selects/select2.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="container">
        <section class="row justify-content-md-center" id="Home">
            <div class="col-xl-3 col-lg-6 col-12">
                <div class="card pull-up">
                    <div class="card-content">
                        <div class="card-body">
                            <div class="media d-flex">
                                <div class="media-body text-left">
                                    <h3 class="info" id="WordCount"></h3>
                                    <h6>Kelime Sayısı</h6>
                                </div>
                                <div>
                                    <i class="fa fa-wordpress info fa-3x float-right"></i>
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
                                    <h3 class="info" id="MemberCount"></h3>
                                    <h6>Üye Sayısı</h6>
                                </div>
                                <div>
                                    <i class="fa fa-user info fa-3x float-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="AddWord">
            <div class="form-group">
                <input type="text" name="Word" class="form-control mb-2" placeholder="Kelime">
                <input type="text" name="Meaning" class="form-control mb-2" placeholder="Anlamı">
                <select name="Languages" class="select2 form-control "></select>
                <button name="Add" type="button" class="btn btn-lg btn-success mt-2">Ekle</button>
            </div>
        </section>
        <section id="DeleteWord">
            <div class="form-group">
                <select name="Words" class="select2 form-control"></select>
                <button name="Delete" type="button" class="btn btn-lg btn-success mt-2">Sil</button>
            </div>
        </section>
        <section id="UpdateWord">
            <div class="form-group">
                <input type="text" name="Word" class="form-control" placeholder="Word">
                <input type="text" name="Meaning" class="form-control" placeholder="Meaning">
                <select name="Language" class="select2 form-control"></select>
                <button name="Update" type="button" class="btn btn-lg btn-success mt-2">Güncelle</button>
            </div>
        </section>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphJS" runat="server">
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/AdminWordOperations.js"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/app-assets/vendors/js/forms/select/select2.full.min.js" type="text/javascript"></script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/app-assets/js/scripts/forms/select/form-select2.js" type="text/javascript"></script>
</asp:Content>
