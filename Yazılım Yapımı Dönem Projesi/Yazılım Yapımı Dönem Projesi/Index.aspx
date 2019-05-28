<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Yazilim_Yapimi_Donem_Projesi.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS" runat="server">
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Custom/Utils.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <!-- Revenue, Hit Rate & Deals -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Bar Chart</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
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
        <div class="col-xl-6 col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Revenue</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body pt-0">
                        <div class="row mb-1">
                            <div class="col-6 col-md-4">
                                <h5>Current week</h5>
                                <h2 class="danger">$82,124</h2>
                            </div>
                            <div class="col-6 col-md-4">
                                <h5>Previous week</h5>
                                <h2 class="text-muted">$52,502</h2>
                            </div>
                        </div>
                        <div class="chartjs">
                            <canvas id="thisYearRevenue" width="400" style="position: absolute;"></canvas>
                            <canvas id="lastYearRevenue" width="400"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-12">
            <div class="row">
                <div class="col-lg-6 col-12">
                    <div class="card pull-up">
                        <div class="card-header bg-hexagons">
                            <h4 class="card-title">Hit Rate
                     
                                <span class="danger">-12%</span>
                            </h4>
                            <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                            <div class="heading-elements">
                                <ul class="list-inline mb-0">
                                    <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-content collapse show bg-hexagons">
                            <div class="card-body pt-0">
                                <div class="chartjs">
                                    <canvas id="hit-rate-doughnut" height="275"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-12">
                    <div class="card pull-up">
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
            <div class="row">
                <div class="col-lg-6 col-12">
                    <div class="card pull-up">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h6 class="text-muted">Order Value </h6>
                                        <h3>$ 88,568</h3>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="icon-trophy success font-large-2 float-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-12">
                    <div class="card pull-up">
                        <div class="card-content">
                            <div class="card-body">
                                <div class="media d-flex">
                                    <div class="media-body text-left">
                                        <h6 class="text-muted">Calls</h6>
                                        <h3>3,568</h3>
                                    </div>
                                    <div class="align-self-center">
                                        <i class="icon-call-in danger font-large-2 float-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ Revenue, Hit Rate & Deals -->
    <%--    <!-- Emails Products & Avg Deals -->
    <div class="row">
        <div class="col-12 col-md-3">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Emails</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body pt-0">
                        <p>
                            Open rate
                   
                            <span class="float-right text-bold-600">89%</span>
                        </p>
                        <div class="progress progress-sm mt-1 mb-0 box-shadow-1">
                            <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 80%"
                                aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <p class="pt-1">
                            Sent
                   
                            <span class="float-right">
                                <span class="text-bold-600">310</span>/500</span>
                        </p>
                        <div class="progress progress-sm mt-1 mb-0 box-shadow-1">
                            <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 48%"
                                aria-valuenow="48" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-3">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Top Products</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a href="#">Show all</a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table mb-0">
                                <tbody>
                                    <tr>
                                        <th scope="row" class="border-top-0">iPone X</th>
                                        <td class="border-top-0">2245</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">One Plus</th>
                                        <td>1850</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Samsung S7</th>
                                        <td>1550</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-6">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title text-center">Average Deal Size</h4>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body pt-0">
                        <div class="row">
                            <div class="col-md-6 col-12 border-right-blue-grey border-right-lighten-5 text-center">
                                <h6 class="danger text-bold-600">-30%</h6>
                                <h4 class="font-large-2 text-bold-400">$12,536</h4>
                                <p class="blue-grey lighten-2 mb-0">Per rep</p>
                            </div>
                            <div class="col-md-6 col-12 text-center">
                                <h6 class="success text-bold-600">12%</h6>
                                <h4 class="font-large-2 text-bold-400">$18,548</h4>
                                <p class="blue-grey lighten-2 mb-0">Per team</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ Emails Products & Avg Deals -->
    <!-- Total earning & Recent Sales  -->
    <div class="row">
        <div class="col-12 col-md-4">
            <div class="card">
                <div class="card-content">
                    <div class="earning-chart position-relative">
                        <div class="chart-title position-absolute mt-2 ml-2">
                            <h1 class="display-4">$1,596</h1>
                            <span class="text-muted">Total Earning</span>
                        </div>
                        <canvas id="earning-chart" class="height-450"></canvas>
                        <div class="chart-stats position-absolute position-bottom-0 position-right-0 mb-2 mr-3">
                            <a href="#" class="btn round btn-danger mr-1 btn-glow">Statistics <i class="ft-bar-chart"></i></a>
                            <span class="text-muted">for the <a href="#" class="danger darken-2">last year.</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="recent-sales" class="col-12 col-md-8">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Recent Sales</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a class="btn btn-sm btn-danger box-shadow-2 round btn-min-width pull-right"
                                href="invoice-summary.html" target="_blank">View all</a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content mt-1">
                    <div class="table-responsive">
                        <table id="recent-orders" class="table table-hover table-xl mb-0">
                            <thead>
                                <tr>
                                    <th class="border-top-0">Product</th>
                                    <th class="border-top-0">Customers</th>
                                    <th class="border-top-0">Categories</th>
                                    <th class="border-top-0">Popularity</th>
                                    <th class="border-top-0">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-truncate">iPone X</td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-4.png"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-5.png"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Rebecca Jones"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-6.png"
                                                    alt="Avatar">
                                            </li>
                                            <li class="avatar avatar-sm">
                                                <span class="badge badge-info">+8 more</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-danger round">Mobile</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 85%"
                                                aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 1200.00</td>
                                </tr>
                                <tr>
                                    <td class="text-truncate">iPad</td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-7.png"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-8.png"
                                                    alt="Avatar">
                                            </li>
                                            <li class="avatar avatar-sm">
                                                <span class="badge badge-info">+5 more</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-success round">Tablet</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 75%"
                                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 1190.00</td>
                                </tr>
                                <tr>
                                    <td class="text-truncate">OnePlus</td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-1.png"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-2.png"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Rebecca Jones"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-3.png"
                                                    alt="Avatar">
                                            </li>
                                            <li class="avatar avatar-sm">
                                                <span class="badge badge-info">+3 more</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-danger round">Mobile</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 70%"
                                                aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 999.00</td>
                                </tr>
                                <tr>
                                    <td class="text-truncate">ZenPad</td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-11.png"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-12.png"
                                                    alt="Avatar">
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-success round">Tablet</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 65%"
                                                aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 1150.00</td>
                                </tr>
                                <tr>
                                    <td class="text-truncate">Pixel 2</td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-6.png"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle" src="../../../app-assets/images/portrait/small/avatar-s-4.png"
                                                    alt="Avatar">
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-danger round">Mobile</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 45%"
                                                aria-valuenow="45" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 1180.00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ Total earning & Recent Sales  -->
    <!-- Analytics map based session -->
    <div class="row">
        <div class="col-12">
            <div class="card box-shadow-0">
                <div class="card-content">
                    <div class="row">
                        <div class="col-md-9 col-12">
                            <div id="world-map-markers" class="height-450"></div>
                        </div>
                        <div class="col-md-3 col-12">
                            <div class="card-body text-center">
                                <h4 class="card-title mb-0">Visitors Sessions</h4>
                                <div class="row">
                                    <div class="col-12">
                                        <p class="pb-1">Sessions by Browser</p>
                                        <div id="sessions-browser-donut-chart" class="height-200"></div>
                                    </div>
                                    <div class="col-12">
                                        <div class="sales pr-2 pt-2">
                                            <div class="sales-today mb-2">
                                                <p class="m-0">
                                                    Today's
                               
                                                    <span class="success float-right"><i class="ft-arrow-up success"></i>6.89%</span>
                                                </p>
                                                <div class="progress progress-sm mt-1 mb-0">
                                                    <div class="progress-bar bg-success" role="progressbar" style="width: 70%" aria-valuenow="25"
                                                        aria-valuemin="0" aria-valuemax="100">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sales-yesterday">
                                                <p class="m-0">
                                                    Yesterday's
                               
                                                    <span class="danger float-right"><i class="ft-arrow-down danger"></i>4.18%</span>
                                                </p>
                                                <div class="progress progress-sm mt-1 mb-0">
                                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 65%" aria-valuenow="25"
                                                        aria-valuemin="0" aria-valuemax="100">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Analytics map based session -->--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphJS" runat="server">
    <script src="<%# Page.ResolveUrl("~") %>/asset/app-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <script>
        var linechart;
        getStatistics('LastYear');
        function getStatistics(statisticsType) {
            if (linechart != undefined)
                linechart.destroy();
            var ctx = $("#bar-chart");
            var chartOptions = {
                elements: {
                    rectangle: {
                        borderWidth: 2,
                        borderColor: 'rgb(0, 255, 0)',
                        borderSkipped: 'left'
                    }
                },
                responsive: true,
                maintainAspectRatio: false,
                responsiveAnimationDuration: 500,
                legend: {
                    position: 'bottom',
                },
                scales: {
                    xAxes: [{
                        display: true,
                        gridLines: {
                            color: "#f3f3f3",
                            drawTicks: true,
                        },
                        scaleLabel: {
                            display: true,
                        }
                    }],
                    yAxes: [{
                        display: true,
                        ticks: {
                            beginAtZero: true
                        },
                        gridLines: {
                            color: "#f3f3f3",
                            drawTicks: true,
                        },
                        scaleLabel: {
                            display: true,
                        }
                    }]
                },
                title: {
                    display: true,
                    text: ''
                }
            };
            var data = JSON.stringify({
                member: {
                    Id: <%=Session["UserId"] != null ? Session["UserId"] : 0%>
                },
                statisticsType: statisticsType
            });
            var statisticsTypes = [["Bugün", "Today"], ["Son 1 Hafta", "LastWeek"], ["Son 1 Ay", "LastMonth"], ["Son 6 Ay", "LastSixMonth"], ["Son 1 Sene", "LastYear"]];
            var labels, returnData;
            for (var a = 0; a < statisticsTypes.length; a++) {
                if (statisticsTypes[a][1] === statisticsType) {
                    labels = [statisticsTypes[a][0]];
                    break;
                }
            }
            $.ajax({
                type: "POST",
                url: "../../../MemberAPI.asmx/GetStatistics",
                data: data,
                contentType: "application/json; charset=utf-8",
                async: false,
                dataType: "json",
                success: function (r) {
                    returnData = JSON.parse(r.d);
                    returnData = returnData["GetStatistics"];
                },
                error: function (r) {
                    console.log(r.responseText);
                },
                failure: function (r) {
                    console.log(r.responseText);
                }
            });
            var chartData = {
                labels: labels,
                datasets: [
                    {
                        label: "Birinci Kontrol Noktası",
                        data: [returnData[0].StageCount],
                        backgroundColor: "#173E5F",
                        hoverBackgroundColor: "rgba(2, 24, 43, 1)",
                        borderColor: "transparent"
                    },
                    {
                        label: "İkinci Kontrol Noktası",
                        data: [returnData[1].StageCount],
                        backgroundColor: "#20639B",
                        hoverBackgroundColor: "rgba(6, 58, 101, 1)",
                        borderColor: "transparent"
                    },
                    {
                        label: "Üçüncü Kontrol Noktası",
                        data: [returnData[2].StageCount],
                        backgroundColor: "#3CAEA2",
                        hoverBackgroundColor: "rgba(9, 132, 119, 1)",
                        borderColor: "transparent"
                    },
                    {
                        label: "Dördüncü Kontrol Noktası",
                        data: [returnData[3].StageCount],
                        backgroundColor: "#F6D55C",
                        hoverBackgroundColor: "rgba(181, 148, 25, 1)",
                        borderColor: "transparent"
                    },
                    {
                        label: "Öğrenildi",
                        data: [returnData[4].StageCount],
                        backgroundColor: "#ED573B",
                        hoverBackgroundColor: "rgba(165, 31, 6, 1)",
                        borderColor: "transparent"
                    }
                ]
            };
            var config = {
                type: 'bar',
                options: chartOptions,
                data: chartData
            };
            linechart = new Chart(ctx, config);
            linechart.update();
        }
    </script>
</asp:Content>
