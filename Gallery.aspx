<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="BCF_ASP.Gallery" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image: url(/Assets/Images2/hero-gallery.jpg); background-size: cover; height: 20%; padding-top: 5%; padding-bottom: 5%; margin-top: 0">
        <div class="container">
            <h1 class="display-4">Gallery</h1>
            <p class="lead">Photographs from different BCF activities.</p>
        </div>
    </div>
    <div class="container">
        <asp:PlaceHolder ID="plhContent" runat="server" OnLoad="plhContent_Load"></asp:PlaceHolder>
    </div>
</asp:Content>
