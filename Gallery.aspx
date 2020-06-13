<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="BCF_ASP.Gallery" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <br />
        <h1 class="display-3">Gallery</h1>
        <br />
    </div>
    <div class="container">
            <asp:PlaceHolder ID="plhContent" runat="server" OnLoad="plhContent_Load"></asp:PlaceHolder>
    </div>
</asp:Content>
