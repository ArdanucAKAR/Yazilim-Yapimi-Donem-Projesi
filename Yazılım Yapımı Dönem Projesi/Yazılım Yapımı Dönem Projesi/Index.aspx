<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Yazilim_Yapimi_Donem_Projesi.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS" runat="server">
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Custom/Utils.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">İstatistikler</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body">
                        <canvas id="bar-chart" height="400"></canvas>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-primary btn-min-width box-shadow-1 mr-1 mb-1" onclick="getStatistics('Today')">Bugün</button>
                        <button type="button" class="btn btn-success btn-min-width box-shadow-2 mr-1 mb-1" onclick="getStatistics('LastWeek')">Son 1 Hafta</button>
                        <button type="button" class="btn btn-info btn-min-width box-shadow-3 mr-1 mb-1" onclick="getStatistics('LastMonth')">Son 1 Ay</button>
                        <button type="button" class="btn btn-warning btn-min-width box-shadow-4 mr-1 mb-1" onclick="getStatistics('LastSixMonth')">Son 6 Ay</button>
                        <button type="button" class="btn btn-danger btn-min-width box-shadow-5 mr-1 mb-1" onclick="getStatistics('LastYear')">Son 1 Sene</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="card pull-up" id="play">
                <div class="card-content collapse show bg-gradient-directional-danger ">
                    <div class="card-body bg-hexagons-danger">
                        <div class="text-center">
                            <h4 class="card-title white">Yeni Kelimeler Öğrenmek İçin</h4>
                        </div>
                        <div class="text-center">
                            <i class="fa fa-play-circle fa-5x text-dark"></i>
                        </div>
                        <div class="chartjs d-none">
                            <canvas id="deals-doughnut" height="275"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphJS" runat="server">
    <script src="<%# Page.ResolveUrl("~") %>/asset/app-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <script>var MemberId =<%=Session["UserId"] != null ? Session["UserId"] : 0 %>;</script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/MemberIndex.js"></script>
</asp:Content>
