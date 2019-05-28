<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="Yazilim_Yapimi_Donem_Projesi.Game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCSS" runat="server">
    <link href="<%# Page.ResolveUrl("~") %>/asset/css/Custom/MemberGame.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div class="row justify-content-center">
        <div class="col-md-6 col-sm-12" id="Question">
            <div class="card text-white box-shadow-0 bg-gradient-directional-info">
                <div class="card-content collapse show">
                    <div class="card-body">
                        <p class="text-center card-text display-1 text-capitalize"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-sm-12" id="AnswerA">
            <div class="card text-white box-shadow-0 border-primary pull-up">
                <div class="card-content collapse show">
                    <div class="card-body">
                        <p class="text-center card-text text-dark display-4 text-capitalize"></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12" id="AnswerB">
            <div class="card text-white box-shadow-0 border-primary pull-up">
                <div class="card-content collapse show">
                    <div class="card-body">
                        <p class="text-center card-text text-dark display-4 text-capitalize"></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12" id="AnswerC">
            <div class="card text-white box-shadow-0 border-primary pull-up">
                <div class="card-content collapse show">
                    <div class="card-body">
                        <p class="text-center card-text text-dark display-4 text-capitalize"></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12" id="AnswerD">
            <div class="card text-white box-shadow-0 border-primary pull-up">
                <div class="card-content collapse show">
                    <div class="card-body">
                        <p class="text-center card-text text-dark display-4 text-capitalize"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphJS" runat="server">
    <script>var MemberId =<%=Session["UserId"] != null ? Session["UserId"] : 0 %>;</script>
    <script src="<%# Page.ResolveUrl("~") %>/asset/js/Custom/MemberGame.js"></script>
</asp:Content>
