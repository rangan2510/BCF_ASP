<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BCF_ASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron jumbotron-fluid default-jumbotron-text" runat="server" id="jt_default_hero" style="background-image: url(/Assets/Images/hero-1.jpg); background-size: contain; height: 100%; padding-top: 0%; padding-bottom: 0%; margin-top: 0;">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 my-auto">
                    <img src="Assets/Branding/branding_main.svg" style="margin-top: 0; margin-bottom: 15px">
                </div>
                <div class="col-md-9 col-sm-6 my-auto">
                    <h1>Bengal Cancer Foundation</h1>
                    <p class="lead">Consultation, Support and Rehabilitation for cancer patients in Eastern India and neighbouring regions. </p>
                    <p><a href="CancerCenter.aspx" class="btn btn-outline-light btn-lg">Learn more &raquo;</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2>Who We Are</h2>
                <p class="text-justify">
                    Bengal Cancer Foundation is a non-profit Organization mainly for the support of cancer patients of Eastern India with consultation, treatment and rehabilitation at minimal cost. 
                </p>
                <p>
                    <a class="btn btn-default" href="About.aspx">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Our Mission</h2>
                <p class="text-justify">
                    There is a huge deficit in cancer treatment facility in Eastern India. Hence, a large number of cancer patients from Eastern India and neighboring country of Bangladesh regularly visit either Mumbai or Chennai for treatment and advice.
                </p>
                <p>
                    <a class="btn btn-default" href="Activities.aspx">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Get in Touch</h2>
                <p class="text-justify">
                    Need assistance? We offer regular patient consultation, treatment and supportive care service at our facility. For any queries, head over to the contacts page. 
                </p>
                <p>
                    <a class="btn btn-default" href="Contact.aspx">Learn more &raquo;</a>
                </p>
            </div>
        </div>
    </div>

</asp:Content>
