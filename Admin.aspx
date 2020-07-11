<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BCF_ASP.Admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron" style="background-image: url(/Assets/Images2/hero-admin.jpg); background-size: cover; height: 20%; padding-top: 5%; padding-bottom: 5%; margin-top: 0">
        <div class="container">
            <h1 class="display-4">Activities</h1>
            <p class="lead"></p>
        </div>
    </div>
    <div class="container justify-content-center">
        <div class="w-100" style="height: 15vh"></div>

        <div class="row w-100 justify-content-center">
            <span class="input-group-btn">
                <a href="http://www.bengalcancerfoundation.com/Data/appointments.csv" target="_blank" class="btn btn-light btn-lg btn-block" style="color: white !important; background-color: #18703C !important"><span class="mdi mdi-microsoft-excel"></span> Download data</a>
                <br />
                <a href="http://www.bengalcancerfoundation.com/Data/archiver.aspx" target="_blank" class="btn btn-light btn-lg btn-block" Style="color: #18703C !important"><span class="mdi mdi-archive-arrow-down-outline"></span> Archive</a>
                <br />
                <asp:Label class="alert alert-light" ID="lblLog" runat="server" Text=""></asp:Label>
            </span>
        </div>
        <div class="text-center">
        </div>

        <div class="w-100" style="height: 15vh"></div>
    </div>
</asp:Content>
