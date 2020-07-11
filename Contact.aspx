<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BCF_ASP.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-image: url(/Assets/Images2/hero-contact.jpg); background-size: cover; height: 20%; padding-top: 5%; padding-bottom: 5%; margin-top: 0">
        <div class="container">
            <h1 class="display-4">Contact</h1>
            <p class="lead">Get in touch</p>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <p class="h4"></p>
            </div>
        </div>
        <div class="row w-100">
            <div class="col-md-4">
                <ul class="list-group">
                    <li class="list-group-item"><a href="tel:+918336954092"><span class="mdi mdi-cellphone"></span> Call: +91 83369 54092</a> </li>
                    <li class="list-group-item"><a href="tel:+913366064290"><span class="mdi mdi-phone"></span> Call: 033 66064290</a></li>
                    <li class="list-group-item"><a href="https://api.whatsapp.com/send?phone=+918336954092&text=Hello." target="_blank"><span class="mdi mdi-whatsapp"></span> WhatsApp:  +91 83369 54092</a></li>
                    <li class="list-group-item"><a href="https://m.me/100693155050204"><span class="mdi mdi-facebook-messenger" target="_blank"></span> Facebook Messenger</a></li>
                    <li class="list-group-item"><a href="https://www.facebook.com/Bengal-Cancer-Foundation-100693155050204" target="_blank"><span class="mdi mdi-facebook"></span> Facebook Page</a></li>
                    <li class="list-group-item"><a href="mailto:bengalcancerfoundation@gmail.com"><span class="mdi mdi-email"></span> Email</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <div class="card" style="height: 100%">
                    <div class="card-body">
                        <h5 class="card-title"><span class="mdi mdi-map-marker"></span>  Bardhaman Institute of Medical Sciences</h5>
                        <h6 class="card-subtitle mb-2 text-muted">BIMS BCF Cancer Center</h6>
                        <p class="card-text">Shrachi Renaissance Township,<br />
                            NH-2, Nababhat, West Bengal 713102<br />
                            India</p>
                        <a href="https://maps.app.goo.gl/Sx96nzutbuwdrEWn7" class="lead"><span class="mdi mdi-google-maps"></span>Open in Maps</a>
                        <div class="w-100" style="height: 20px"></div>
                        <a href="https://www.google.com/maps/dir//BIMS+(Bardhaman+Institute+of+Medical+Sciences+Pvt.+Ltd.),+Renaissance+Township,+Goda,+Bardhaman,+West+Bengal+713102/@23.2662844,87.8239835,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x39f836774d6e8247:0xd9c89e52f48e9107!2m2!1d87.8261722!2d23.2662844" target="_blank" class="lead"><span class="mdi mdi-directions"></span>Get Directions</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="height: 100%">
                    <div class="card-body">
                        <h5 class="card-title"><span class="mdi mdi-contacts"></span>  Download contact</h5>
                        <div class="text-center">
                            <a href="Assets/vcard.vcf">
                                <img class="card-img-topmx-auto" src="Assets/QR.svg" style="max-height: 180px"></a>
                            <p class="card-text">Scan or click to add contact details.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row w-100" style="height: 20px"></div>
        </div>
        <iframe class="rounded" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14661.081894198398!2d87.84297528747692!3d23.269619869546684!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f836774d6e8247%3A0xd9c89e52f48e9107!2sBIMS%20(Bardhaman%20Institute%20of%20Medical%20Sciences%20Pvt.%20Ltd.)!5e0!3m2!1sen!2sin!4v1593713359395!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
</asp:Content>
