<%@ Page Title="Cancer Center" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CancerCenter.aspx.cs" Inherits="BCF_ASP.CancerCenter" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image: url(/Assets/CancerCenter/cc-hero.jpg); background-size: cover; height: 20%; padding-top: 5%; padding-bottom: 5%; margin-top: -20px;">
        <div class="container">
            <h1 class="display-4">Bardhaman Institute of Medical Sciences</h1>
            <p class="lead">BIMS BCF Cancer Center</p>
            <hr />
            <p>Day care cancer facility, supportive care & diagnostic services along with OPD services</p>
        </div>
    </div>

    <div class="container">
        <%--------------------------------------------------------------------------------------------%>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active lead" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                    aria-selected="true"><span class="mdi mdi-stethoscope"></span> Doctors</a>
            </li>
            <li class="nav-item">
                <a class="nav-link lead" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
                    aria-selected="false"><span class="mdi mdi-hospital-building"></span> Facilities & Activities</a>
            </li>
            <li class="nav-item">
                <a class="nav-link lead" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
                    aria-selected="false"><span class="mdi mdi-handshake"></span> Affiliations</a>
            </li>
        </ul>
        <%--------------------------------------------------------------------------------------------%>
        
        <asp:PlaceHolder ID="plhAppSuccess" runat="server" Visible="False">
            <br />
            <div class="alert alert-success alert-dismissible fade show">
                <strong>Success!</strong> You have booked an appointment. We will contact you within 48 hours.
            </div>
        </asp:PlaceHolder>

        <asp:PlaceHolder ID="plhAppDanger" runat="server" Visible="False">
            <br />
            <div class="alert alert-danger alert-dismissible fade show">
                <strong>Oops!</strong> Something went wrong.We could not book your appointment. Feel free to call or WhatsApp us.
            </div>
        </asp:PlaceHolder>

        <br />
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#exampleModalCenter">
            Book an Appointment!
        </button>
        

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Book an appointment</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container input-group input-group-lg">
                            <div class="row w-100">                                
                                <small class="col-12">Reach out to us directly or fill in the form below and we will contact you within 48 hours. More contact details <a href="Contact.aspx" target="_blank">here.</a></small>
                                <div class="row w-100" style="height:20px"></div>
                                <div class="col-4"> <%--WhatsApp--%>
                                    <a href="https://api.whatsapp.com/send?phone=+918336954092&text=Hi%2C%20I%20would%20like%20to%20make%20an%20appointment." target="_blank" class="btn btn-light w-100" style="background-color:#38BFA6 !important; color:white !important"><i class="mdi mdi-36px mdi-whatsapp"></i><br />WhatsApp</a>
                                </div>
                                <div class="col-4"> <%--Phone Call--%>
                                    <a href="tel:+918336954092" class="btn btn-light w-100" style="background-color:#1D77E5 !important; color:white !important"> <i class="mdi mdi-36px mdi-phone"></i><br />Phone</a>
                                </div>
                                <div class="col-4"> <%--Email--%>
                                    <a href="mailto:bengalcancerfoundation@gmail.com?subject=New%20Appointment&body=Name%3A%0APhone%20number%3A%0APreferred%20Date%3A%0APreferred%20Time%3A%0ADoctor%2FDepartment%3A" class="btn btn-light w-100" style="background-color:#D84741 !important; color:white !important"><i class="mdi mdi-36px mdi-email-outline"></i><br />Email</a>
                                </div>                                
                            </div>
                            <div class="row w-100" style="height:20px"></div>
                            <div class="row">
                                <h5 class="col-12">Appointment form</h5>
                                <h6 class="col-12">Name</h6>
                                <div class="w-100"></div>
                                <small class="col-12">Do not include your title. Put your middle name with your last name.</small>
                                <br />
                                <div class="w-100"></div>
                            </div>
                            <div class="row w-100">
                                <div class="col">
                                    <asp:TextBox ID="txtName1" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqName1" runat="server" ErrorMessage="First name cannot be blank!" ControlToValidate="txtName1" class="badge badge-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col">
                                    <asp:TextBox ID="txtName2" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqName2" runat="server" ErrorMessage="Last name cannot be blank!" ControlToValidate="txtName2" class="badge badge-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="w-100"></div>
                            </div>
                            <div class="row w-100">
                                <h6 class="col">Email</h6>
                                <div class="w-100"></div>
                                <div class="col">
                                    <asp:TextBox ID="txtMail" runat="server" class="form-control col-12" placeholder="Enter email address"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email address cannot be blank!" ControlToValidate="txtMail" class="badge badge-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgxEmail" runat="server" ErrorMessage="Enter email in a proper format." ControlToValidate="txtMail" class="badge badge-warning" ValidationExpression="^((?!\.)[\w-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="row w-100">
                                <h6 class="col">Phone</h6>
                                <div class="w-100"></div>
                                <small class="col">Include both primary contact number and an alternate number. Contact numbers must be 10-digits.</small>
                                <div class="w-100" style="height:5px;"></div>
                                <div class="col-4">
                                    <asp:DropDownList ID="ddlTelCode" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <div class="col-8">
                                    <asp:TextBox ID="txtContact" runat="server" class="form-control" placeholder="10-digit contact number"></asp:TextBox>
                                </div>
                                <div class="w-100"></div>
                                <div class="col">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a contact number." ControlToValidate="txtContact" class="badge badge-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rgxContact" runat="server" ErrorMessage="Enter a 10-digit contact number" ControlToValidate="txtContact" class="badge badge-warning" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"></asp:RegularExpressionValidator>
                                </div>
                                <div class="w-100"></div>
                                <div class="col w-100">
                                    <asp:TextBox ID="txtContactAlt" runat="server" class="form-control w-100" placeholder="Alternate contact number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqContactAlt" runat="server" ErrorMessage="Alternate number is mandatory." ControlToValidate="txtContactAlt" class="badge badge-info"></asp:RequiredFieldValidator>
                                </div>
                                <div class="w-100"></div>
                            </div>
                            <div class="row">
                                <h6 class="col-12">Preferred Timing</h6>
                                <br />
                                <small class="col-12">Requested timings might not always be available. Final timing will be intimated to you. Leave blank if you are okay with whatever date is assigned to you.</small><br />
                                <div class="col">
                                    <asp:TextBox ID="txtDate" runat="server" class="form-control" placeholder="DD.MM.YYYY"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="rgxDate" runat="server" ErrorMessage="Enter date in DD.MM.YYYY format." ControlToValidate="txtDate" class="badge badge-warning" ValidationExpression="^((0?[1-9]|[12][1-9]|3[01])\.(0?[13578]|1[02])\.20[0-9]{2}|(0?[1-9]|[12][1-9]|30)\.(0?[13456789]|1[012])\.20[0-9]{2}|(0?[1-9]|1[1-9]|2[0-8])\.(0?[123456789]|1[012])\.20[0-9]{2}|(0?[1-9]|[12][1-9])\.(0?[123456789]|1[012])\.20(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96))$"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col">
                                    <asp:DropDownList ID="ddlTime" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row w-100">
                                <div class="col-9">
                                    <h6>Contacting us the first time?</h6>
                                </div>
                                <div class="col-4">
                                    <asp:DropDownList ID="ddlFirstTime" runat="server" class="form-control"></asp:DropDownList>
                                </div>
                                <br /><br />
                            </div>
                            <div class="w-100"></div>
                            <div class="row w-100">
                                <h6 class="col-12">Select Doctor/Deparment</h6>
                                <br />
                                <small class="col-12">Select a doctor or department of your choice. You may choose to decide later when we call you to confirm the timings.</small><br />
                                <div class="w-100" style="height:5px;"></div>
                                <div class="col-12">
                                    <asp:ListBox ID="lbChoices" class="form-control form-control-lg mx-auto" runat="server"></asp:ListBox>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <asp:Button ID="btnSave" runat="server" Text="Proceed" class="btn btn-primary" OnClick="btnSave_Click" />
                    </div>
                </div>
            </div>
        </div>
        <%-----------------------------------------------------------------------------------%>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <hr />
                <h2>Radiation Oncology</h2>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/duttadebnarayan.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr. Debnarayan Dutta, MD</h5>
                                <p class="card-text font-weight-bold">Associate Professor & Head</p>
                                <p class="card-text">Amrita Institute of Medical Sciences, Kochi</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                       <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Sanatan Banerjee, MD</h5>
                                <p class="card-text font-weight-bold">Professor & Head</p>
                                <p class="card-text">Department of Radiation Oncology, Burdwan Medical College, Burdwan</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Karthikeyan, DMRT DNB</h5>
                                <p class="card-text font-weight-bold">Consultant, Radiation Oncology</p>
                                <p class="card-text">Kamakshi Mission Hospital, Chennai</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Rajsekhar S DMRT DNB</h5>
                                <p class="card-text font-weight-bold">Consultant, Radiation Oncology</p>
                                <p class="card-text">Saveetha Medical College, Chennai</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Premnath Dutta, MD</h5>
                                <p class="card-text font-weight-bold">Assistant Professor</p>
                                <p class="card-text">Department of Radiation Oncology, Burdwan Medical College, Burdwan</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Biswamith Bhattachya, MD</h5>
                                <p class="card-text font-weight-bold">Assistant Professor</p>
                                <p class="card-text">Department of Radiation Oncology, Burdwan Medical College, Burdwan</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Sathiya Krishnamoorthy, DNB</h5>
                                <p class="card-text font-weight-bold">Consultant Radiation Oncologist</p>
                                <p class="card-text">Global Hospital, Chennai</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Sumeet Basu, MD</h5>
                                <p class="card-text font-weight-bold">Senior Consultant Radiation Oncologist</p>
                                <p class="card-text">Ruby Hall, Pune</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="height:20px"></div>
                <h2>Medical Oncology</h2>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Tamojit Chowdhury, MD DM</h5>
                                <p class="card-text font-weight-bold">Consultant Medical Oncologist</p>
                                <p class="card-text">Tata Hospital, Jamshedpur</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Meera Suvarna, MBBS</h5>
                                <p class="card-text font-weight-bold">Consultant Physician</p>
                                <p class="card-text">BIMS-BCF Cancer Centre, Burdwan</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Iqbal Hossain, MBBS</h5>
                                <p class="card-text font-weight-bold">Medical Officer</p>
                                <p class="card-text">BIMS-BCF Cancer Centre, Burdwan</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="height:20px"></div>
                <h2>Surgical Oncology</h2>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Suvodip Chakraborti, MS FAIS</h5>
                                <p class="card-text font-weight-bold">Consultant Surgical Oncologist</p>
                                <p class="card-text">Apollo Gleanegles Cancer Institute, Kolkata</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Suvendu Maji MS DNB (Surgical Oncology)</h5>
                                <p class="card-text font-weight-bold">Assistant Professor</p>
                                <p class="card-text">Department of Surgical Oncology, Calcutta Medical College, Kolkata</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Soumyajyoti Panja MS (General Surgery)</h5>
                                <p class="card-text font-weight-bold">Consultant Surgeon</p>
                                <p class="card-text">BIMS -BCF Cancer Centre, Burdwan</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Soumya Banerjee, MS (General Surgery)</h5>
                                <p class="card-text font-weight-bold">Consultant Surgeon</p>
                                <p class="card-text">BIMS -BCF Cancer Centre, Burdwan</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Minazul Haque, MBBS</h5>
                                <p class="card-text font-weight-bold">Surgeon</p>
                                <p class="card-text">BIMS -BCF Cancer Centre, Burdwan</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="height:20px"></div>
                <h2>Radiology</h2>
                <div class="row">
                     <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Tarique Ajiz, MD (Radiology)</h5>
                                <p class="card-text font-weight-bold">Consultant Interventional Radiologist</p>
                                <p class="card-text">BIMS-BCF Cancer Centre, Burdwan</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="height:20px"></div>
                <h2>Rehabilitation</h2>
                <div class="row">
                     <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Dr Tuhin Sinha, MD</h5>
                                <p class="card-text font-weight-bold">Consultant Physiotherapist</p>
                                <p class="card-text">Kolkata</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="height:20px"></div>
                <h2>Nutritionist</h2>
                <div class="row">
                     <div class="col-lg-4 col-md-4 col-sm-6 d-flex align-items-stretch">
                        <div class="card" style="padding: 10px; margin-bottom:20px">
                            <img class="card-img-top rounded" src="Assets/CancerCenter/ProfileAvatars/generic.jpg" alt="Card image">
                            <div class="card-body">
                                <h5 class="card-title">Rima Banik</h5>
                                <p class="card-text font-weight-bold">Ex-nutritionist</p>
                                <p class="card-text">TMC Kolkata</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--------------------------------------------------------------------------------------------%>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <br />
                <br />
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="Assets/CancerCenter/cc-carousel_1.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="Assets/CancerCenter/cc-carousel_2.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="Assets/CancerCenter/cc-carousel_3.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <%--------------------------------------------------------------------------------------------%>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <br />
                <div class="alert alert-light" role="alert">
                    <h4 class="alert-heading">Coming Soon!</h4>
                    <p>This part of the website is not ready yet. Please check back later and we should be ready by then.</p>
                    <hr>
                    <p class="mb-0">Thanks for having a look.</p>
                </div>
            </div>
        </div>

    </div>



</asp:Content>
