<%@ Page Title="Activities" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="BCF_ASP.Activities" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-image: url(/Assets/Images2/hero-act.jpg); background-size: cover; height: 20%; padding-top: 5%; padding-bottom: 5%; margin-top:0">
        <div class="container">
            <h1 class="display-4">Activities</h1>
            <p class="lead">Get to know what we do!</p>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <asp:PlaceHolder ID="plhContent" runat="server" OnLoad="plhContent_Load"></asp:PlaceHolder>

        </div>
    </div>
</asp:Content>
