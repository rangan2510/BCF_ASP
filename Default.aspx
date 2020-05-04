<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BCF_ASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron jumbotron-fluid default-jumbotron-text" runat="server" id="jt_default_hero" style="background-image: url(/Assets/Images/hero-1.jpg); background-size: cover; height: 100%; padding-top: 15%;padding-bottom: 15%; margin-top:-20px;">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                     <img src="Assets/Branding/branding_main.svg" style="margin-top:30px;margin-bottom:30px">
                </div>
                <div class="col-md-8">
                    <h1>Bengal Cancer Foundation</h1>
            <p class="lead">Bengal Cancer Foundation is a non-profit Organization mainly for the support of cancer patients from Eastern India. Aim of this organization is to provide information, consultation from the eminent oncologists from India, provide them treatment at minimal cost and help them in rehabilitation.</p>
                    <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
                </div>
            </div>            
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2>Who We Are</h2>
                <p>
                    There is a huge deficit in cancer treatment facility in Eastern India. Hence, a large number of cancer patients from Eastern India and neighboring country of Bangladesh regularly visit either Mumbai or Chennai for treatment and advice.
                </p>
                <p>
                    <a class="btn btn-default" href="About.aspx">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Our Mission</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="Activities.aspx">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Get in Touch</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="Contact.aspx">Learn more &raquo;</a>
                </p>
            </div>
        </div>
    </div>

</asp:Content>
