<%@ Page Title="" Language="C#" MasterPageFile="~/admin/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Yazilim_Yapimi_Donem_Projesi.admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="container">
        <div class="row justify-content-md-center">
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
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphJS" runat="server">
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/AdminWordOperations.js"></script>
</asp:Content>
