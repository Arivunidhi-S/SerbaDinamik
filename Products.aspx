<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title>Serba Dinamik | Products Online</title>
    <link rel="shortcut icon" href="images/serbatitle.png" />
    <meta name="description" >
    <meta name="author" >
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link media="screen" charset="utf-8" rel="stylesheet" href="css/base.css" />
    <link media="screen" charset="utf-8" rel="stylesheet" href="css/skeleton.css" />
    <link media="screen" charset="utf-8" rel="stylesheet" href="css/layout.css" />
    <link media="screen" charset="utf-8" rel="stylesheet" href="css/child.css" />
    <!--[if (IE 6)|(IE 7)]>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
<![endif]-->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script type="text/javascript" language="javascript" src="js/jquery-1-8-2.js"></script>
    <script type="text/javascript" src="js/default.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.carousel.js"></script>
    <script type="text/javascript" src="js/jquery.color.animation.js"></script>
    <style type="text/css">
        .tb10
        {
            background-image: url(images/form_bg.jpg);
            background-repeat: repeat-x;
            border: 1px solid #d1c7ac;
            width: 300px;
            height: 30px;
            color: #000;
            padding: 3px;
            margin-right: 4px;
            margin-bottom: 8px;
            font-family: tahoma, arial, sans-serif;
            background-color: #f8f8f8;
        }
        
        
        .myButton
        {
            -moz-box-shadow: inset 0px -3px 7px 0px #29bbff;
            -webkit-box-shadow: inset 0px -3px 7px 0px #29bbff;
            box-shadow: inset 0px -3px 7px 0px #29bbff;
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2dabf9), color-stop(1, #0688fa));
            background: -moz-linear-gradient(top, #2dabf9 5%, #0688fa 100%);
            background: -webkit-linear-gradient(top, #2dabf9 5%, #0688fa 100%);
            background: -o-linear-gradient(top, #2dabf9 5%, #0688fa 100%);
            background: -ms-linear-gradient(top, #2dabf9 5%, #0688fa 100%);
            background: linear-gradient(to bottom, #2dabf9 5%, #0688fa 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#2dabf9', endColorstr='#0688fa',GradientType=0);
            background-color: #2dabf9;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            border: 1px solid #0b0e07;
            display: inline-block;
            cursor: pointer;
            color: #000;
            font-family: Arial;
            font-size: 15px;
            padding: 4px 15px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #263666;
        }
        .myButton:hover
        {
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0688fa), color-stop(1, #2dabf9));
            background: -moz-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
            background: -webkit-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
            background: -o-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
            background: -ms-linear-gradient(top, #0688fa 5%, #2dabf9 100%);
            background: linear-gradient(to bottom, #0688fa 5%, #2dabf9 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#0688fa', endColorstr='#2dabf9',GradientType=0);
            background-color: #0688fa;
        }
        .myButton:active
        {
            position: relative;
            top: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page-wrapper">
        <div class="slug-pattern">
            <div class="overlay">
                <div class="slug-cut">
                </div>
            </div>
        </div>
        <div class="header">
            <div class="nav">
                <div class="container">
                    <!-- Standard Nav (x >= 768px) -->
                    <div class="standard">
                        <div class="five column alpha">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="images/logo.png" /></a><!-- Large Logo -->
                            </div>
                        </div>
                        <div class="eleven column omega tabwrapper">
                            <div class="menu-wrapper">
                                <ul class="tabs menu">
                                    <li><a href="index.html"><span>Home</span></a>
                                        <ul class="child">
                                        </ul>
                                    </li>
                                    <li><a href="#">About Us</a>
                                        <ul class="child">
                                            <li><a href="GroupOverview.html">Group Overview</a> </li>
                                            <li><a href="GroupPolicies.html">Group Policies</a> </li>
                                            <li><a href="GroupBusiness.html">Group Business Unit</a></li>
                                            <li><a href="TechnicalBackUp.html">Technical Backup Team</a></li>
                                            <li><a href="Careers.aspx">Careers</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Services</a>
                                        <ul class="child">
                                            <li><a href="EPCC.html">EPCC</a></li>
                                            <li><a href="PlantOperation.html">Operation & Maintenance</a></li>
                                            <li><a href="SystemIntegrator.html">System Integrator</a>
                                                <ul>
                                                    <li><a href="ControlInstrumentation.html">Control & Instrumentation</a></li>
                                                    <li><a href="Facility.html">Facility</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="GlobalTrading.html">Global Trading</a></li>
                                            <li><a>Training</a>
                                                <ul>
                                                    <li><a href="CityProg.html">City and Guilds Programs</a></li>
                                                    <li><a href="Education.html">Education</a></li>
                                                    <li><a href="Training.html">Training</a></li>
                                                    <!--<li><a href="http://mymall.netbuilder.com.my/index.php?domain=eserbadk" target="_blank">-->
                                                        <!-- Web Store</a></li>-->
                                                </ul>
                                            </li>
                                            <li><a href="IT/index.html" target="_blank">IT Solutions</a> </li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Awards </a>
                                        <ul class="child">
                                            <li><a href="Awards.html">Awards</a></li>
                                            <li><a href="InterReco.html">International Recognition</a></li>
                                            <li><a href="ClientList.html">Client List</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="GlobalNetworkList.html">Global</a></li>
                                    <li><a href="Products.aspx" class="active">Products</a></li>
                                    <li><a href="contactus.aspx">Contact </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Standard Nav Ends, Start of Mini -->
                    <div class="mini">
                        <div class="twelve column alpha omega mini">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="images/logoMINI.png" /></a><!-- Small Logo -->
                            </div>
                        </div>
                        <div class="twelve column alpha omega navagation-wrapper">
                            <select class="navagation">
                                <option value="" selected="selected">Site Navagation</option>
                            </select>
                        </div>
                    </div>
                    <!-- Start of Mini Ends -->
                </div>
            </div>
            <div class="shadow">
            </div>
            <div class="container">
                <div class="page-title">
                    <div class="rg">
                    </div>
                    <h1>
                        Products Online</h1>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="body-round">
            </div>
            <div class="body-wrapper">
                <div class="side-shadows">
                </div>
                <div class="content">
                    <div class="container callout standard">
                        <div class="sixteen columns">
                            <h4>
                                <p class="link-location">
                                    You are here: <a href="#">Products</a>
                                    <!-- / <a href="#">Carrers</a> / <a href="#">Current Page</a>-->
                                </p>
                                Login to Buy our Products Online</h4>
                            <p>
                                Thank you for your interest in Serba Dinamik Group. We are ready to serve you with
                                quality services and 24X7 technical support. Should you need our assistance, please
                                consult our team at our headquarters immediately. Please Login to buy our products
                                online.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="callout-hr">
                </div>
                <div class="container">
                    <div class="two-thirds column alpha">
                        <div class="title-wrapper">
                            <div class="section-title">
                                <h4 class="title">
                                    List of Products</h4>
                            </div>
                            <span class="divider"></span>
                            <div class="clear">
                            </div>
                        </div>
                        <ul class="accordion" id="1">
                            <li>
                                <div class="parent first">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        AMS - AudioMetric Management System.</h6>
                                </div>
                                <div class="tcontent">
                                    This software is used for plant's that involves in the manufacturing sectors. The
                                    software is used to keep track all the information related to the Audiometric test
                                    of the employee's. The software will help to provide report related to the DOSH.<br />
                                    Easy to provide Audiometric test result once it is completed. The report related
                                    to the company can produce with duration in few minutes. The report related to the
                                    DOSH can produce at anytime. The Data is maintained and secure.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        CHMS - Chemical Hazard Management System.</h6>
                                </div>
                                <div class="tcontent">
                                    This software is used for plant's that involves in the manufacturing sectors. The
                                    software is used to keep track all the information related to the chemical in the
                                    workplace. The software will help to provide report related to the DOSH. The Submission
                                    of the CHMS should be done for every 4 years to DOSH.<br />
                                    The software will be helpful to store all the information related to the chemical
                                    in you plant's. There is no need to search for old Assessment data, we can also
                                    transfer the data from the old Assessment date to new Assessment date. The report
                                    related to the DOSH can produce at anytime. It will make the chemical Assessor job
                                    to become very easy for Assessment. The Data is maintained and secure.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        FMAT - Failure Mode and Analysis Tool.</h6>
                                </div>
                                <div class="tcontent">
                                    It is a powerful tool that keeps track of all the plant equipments history of maintenance,
                                    spare parts replacements, failure modes and costs incurred.<br />
                                    Maintenance managers will be able to predict the next failure of their equipment
                                    and take the necessary steps to prolong the life of their equipements and generate
                                    reports.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        ICNS - Information and Communication Network System.</h6>
                                </div>
                                <div class="tcontent">
                                    It is the application to be used for communication purpose from a certralized location
                                    to any other location where the client's software is installed.<br />
                                    This software is two way online communications where the client can send information,
                                    acknowledge information from the server.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        IMAT - Incident Matrix and Analysis Tool.</h6>
                                </div>
                                <div class="tcontent">
                                    It is a tool that for any organization that is looking to improve the incident management
                                    system at their workplace.<br />
                                    It is powerful and comprehensive tool that covers every aspect of the incident happen
                                    in the plant also provide details to all the staff above the incidents.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        SWIM - Schedule Waste Inventory Management System.</h6>
                                </div>
                                <div class="tcontent">
                                    It is web based system which tracks all schedule waste in an operating site, including
                                    information of storage, movement of waste disposal or recovery and invoices tracking.<br />
                                    It provides value added information to the company in terms of waste generation,
                                    cost incurred by each and every department or operating units. The standard reports
                                    are compiled in accordance to DOE requirements.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        PCET - Project Cost and Estimation Tracking.</h6>
                                </div>
                                <div class="tcontent">
                                    It is a program to calculate the cost estimates of projects to be done in any industry.<br />
                                    It breakdowns the cost into different variables and deliverables and generates reports.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        PPEI - PPE Invetory System.</h6>
                                </div>
                                <div class="tcontent">
                                    It is a tool to assist to keep track of all the inventory of PPE and all data is
                                    capture and traceable by the software.<br />
                                    In case of any incident, it is traceable for the date of PPE issue and expiry during
                                    DOSH inspection and audit.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        PPRS - Production Planner Reporting System.</h6>
                                </div>
                                <div class="tcontent">
                                    It is a system can be interfaced with the plant DCS system or any other system to
                                    read, store and analyze tank level information for the purpose of inventory control.<br />
                                    It can assist the production planners on daily inventory levels for production and
                                    raw meterial movements.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        RBI - Risk Based Inspection (Smart Inspector v1.2).</h6>
                                </div>
                                <div class="tcontent">
                                    It is a methodology used to define inspection program which have fired and unfired
                                    pressure vessels; as desribed by the API 580 recommended practice, the primary objective
                                    of RBI is that risk is taken into account when developing inspection plans on an
                                    equipment level.<br />
                                    As such, inspection data and status reports generated must submit to DOSH for approval.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        MOC - Management of Change.</h6>
                                </div>
                                <div class="tcontent">
                                    It is most important software in a process plant to manage the changes that are
                                    made to machines to improve the efficiency of the plant.<br />
                                    This software also assists in tracking all the HSE parameters that are required
                                    to be checked and verified as per the company's HSE standard.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        MyPlant - Plant Monitoring System.</h6>
                                </div>
                                <div class="tcontent">
                                    MyPlant is specially designed and developed for operation and maintenance personnel
                                    usage to record, monitor and manage plant equipment information. It is a complete
                                    data logging system that includes software & hardware (PDA + peripherals) for plant
                                    performance and management activities.<br />
                                    Recorded data can be analyzed and used to predict or characterize equipment behavior
                                    for an accurate and timely decision making that in return optimize ROI & energy
                                    conserved.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        VibraSolve - Vibration Condition Monitoring System.</h6>
                                </div>
                                <div class="tcontent">
                                    VibraSolve is a condition monitoring system (Hardware & Software) used to Analyze,
                                    Monitor, Keep Track, Record and manage vibration condition on equipment. The software
                                    is designed in such a way so that condition monitoring of machineries based on vibration
                                    measurement can be integrated throgh local area network.<br />
                                    This package will provide graphical user interface(GUI) of measurement identities.
                                    It will manage data acquisition & processing, sotrage & retrieval, analyze data
                                    and to the end, generates report for end users.
                                </div>
                            </li>
                            <li>
                                <div class="parent">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        AlignSoft - Alignment Tool System.</h6>
                                </div>
                                <div class="tcontent">
                                    An easy to use package consisting of hardware and software specially designed to
                                    solve critical alignment problems quickly, efficiently and economically. It is a
                                    tool to help field engineers/technicians to perform precision alignment, produce
                                    report and keep track of alignment records.<br />
                                    Misalignment corrected using AlignSoft™ will help reduce bearing & seal failure,
                                    prevent broken shafts, reduce production downtime and minimize energy losses.
                                    <br />
                                    <br />
                                    <a href="https://play.google.com/store/apps/details?id=serbadk.alignsoftV2" target="_blank"><span>Download on Playstore</span></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="one-third column omega">
                        <div class="title-wrapper">
                            <div class="section-title">
                                <h4 class="title">
                                    Login</h4>
                            </div>
                            <span class="divider"></span>
                            <div class="clear">
                            </div>
                        </div>
                        <div class="form-result">
                        </div>
                        <form action="#" class="contactForm" id="contactus" name="contactus">
                        <asp:TextBox ID="user_name" class="tb10" runat="server" placeholder='User ID'></asp:TextBox>
                        <br />
                        <asp:TextBox ID="pass_word" class="tb10" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                        <br />
                        <input type="button" value="Login" id="A1" class="myButton" runat="server" onserverclick="Btn_Login_Click" />
                        <br />
                        <br />
                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                        </form>
                        <br />
                        <div class="title-wrapper">
                            <div class="section-title">
                                <h4 class="title">
                                    Register Free</h4>
                            </div>
                            <span class="divider"></span>
                            <div class="clear">
                            </div>
                        </div>
                        <div class="form-result">
                        </div>
                        <div>
                        <asp:TextBox ID="txtName" class="tb10" runat="server" placeholder="Name *"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtEmail" class="tb10" runat="server" placeholder="Email *"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtPhone" class="tb10" runat="server" placeholder="Mobile *"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtCountry" class="tb10" runat="server" placeholder="Country *"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="txtUser" class="tb10" runat="server" placeholder="User ID *"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtPassword" class="tb10" runat="server" TextMode="Password" placeholder="Enter-Password "></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtRePassword" class="tb10" runat="server" TextMode="Password" placeholder="Retype-Password"></asp:TextBox>
                        <br />
                        <input type="button" value="Register" id="A2" class="myButton" runat="server"
                            onserverclick="btnRegister_Click" />
                      <%--  <asp:Button ID="btn_Register" runat="server" Text="Register" class="myButton"  OnClick="btnRegister_Click"/>--%>
                      <%--  <div class="submit">
                                        <a class="button color" runat="server" href="#" onserverclick="btnRegister_Click"><span>Register</span></a>
                                </div>--%>
                            <br />
                        <br />
                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                       </div>
                    </div>
                    <div class="clear">
                    </div>
                    <div class="sixteen columns">
                        <span class="hr lip-quote"></span>
                        <blockquote class="standard bottom">
                             "Think Globally... Act Locally..."
                            <br />
                            <a class="link" href="downloads/Thirukkural.pdf" target="_blank"></a>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer style-2">
            <div class="background">
                <div class="stitch">
                </div>
            </div>
            <div class="foot-nav-bg">
            </div>
            <div class="content">
                <div class="patch">
                </div>
                <div class="blur">
                </div>
                <div class="pattern">
                    <div class="container">
                        <div class="stitch">
                        </div>
                        <div class="sixteen columns">
                            <div class="first column alpha">
                                <div class="left">
                                    <div class="logo-caption">
                                    </div>
                                    <h5>
                                        Vision</h5>
                                    <p>
                                        * To excel as a global and recognised provider &nbsp;&nbsp;&nbsp;of Total Technical
                                        Engineering and &nbsp;&nbsp;&nbsp;Commercial Services
                                    </p>
                                    <p class="extra">
                                    </p>
                                </div>
                            </div>
                            <div class="column ct">
                                <h5>
                                    Mission</h5>
                                <p>
                                    * The most highly regarded value-adder in terms of safety, &nbsp;&nbsp;&nbsp;quality
                                    and effectiveness.<br />
                                    * The first choice for customers that they need not look for &nbsp;&nbsp;&nbsp;other
                                    alternatives.
                                    <br />
                                    * Profit contributor to our shareholders.
                                </p>
                            </div>
                            <div class="last column omega">
                                <div style="text-align: center">
                                    <!--<div id="google_translate_element">
                                        </div>
                                        <script type="text/javascript">
                                            function googleTranslateElementInit() {
                                                new google.translate.TranslateElement({ pageLanguage: 'en' }, 'google_translate_element');
                                            }
                                        </script>
                                        <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>-->
                                    <div id="google_translate_element">
                                    </div>
                                    <script type="text/javascript">
                                        function googleTranslateElementInit() {
                                            new google.translate.TranslateElement({ pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
                                        }
                                    </script>
                                    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
                                    <br />
                                    <p>
                                        Powered by</p>
                                    <span style="white-space: nowrap; color: #FFFFFF;"><a class="A" href="https://translate.google.com/"
                                        target="_blank">
                                        <img src="images/google_logo_41.png" style="padding-right: 3px; background-color: #FFFFFF;"
                                            height="13px" width="37px" alt="" class="A" />&nbsp;Translate</a></span>
                                </div>
                                <!-- <div class="clear">
                                    </div>
                                    <span class="hr"></span>
                                    <h5>
                                        Stay in Touch</h5>
                                    <ul class="sm foot">
                                        <li class="facebook"><a href="#facebook">Facebook</a></li>
                                        <li class="twitter"><a href="#twitter">LinkedIn</a></li>
                                        <li class="linkedin"><a href="#linkedin">Pinterest</a></li>
                                        <li class="pinterest"><a href="#pinterest">Pinterest</a></li>
                                        <li class="dribbble"><a href="#dribbble">Pinterest</a></li>
                                        <li class="flickr"><a href="#flickr">Pinterest</a></li>
                                        <li class="flavors"><a href="#flavors">Pinterest</a></li>
                                    </ul>-->
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                    <div class="sixteen columns alpha omega">
                        <div class="foot-nav-bg">
                        </div>
                        <div class="foot-nav">
                            <div class="copy">
                                Copyright © 2015 by Serba Dinamik Group. All Rights Reserved | Design by <a href="http://e-serbadk.com/IT/index.html"
                                    target="_blank" style="color: #d8d8d8">Serba Dinamik IT Solution.</a>
                            </div>
                            <div class="nav">
                                <a href="index.html">Home</a> <a href="Awards.html">Awards</a> <a href="ContactUs.aspx">
                                    Contact Us</a> <a href="GlobalNetworkList.html">Global</a> <a href="Products.aspx">Products</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- <script type="text/javascript">
            $(document).ready(function () {
                $('.slidewrap2').carousel({
                    slider: '.slider',
                    slide: '.slide',
                    slideHed: '.slidehed',
                    nextSlide: '.next',
                    prevSlide: '.prev',
                    addPagination: false,
                    addNav: false
                });
                $('.slide.testimonials').contentSlide({ 'nav': false });
            });
        </script>--%>
    <script type="text/javascript" src="js/jquery.color.animation.js"></script>
    <script src="ajax/ajax_default.js" type="text/javascript"></script>
    <script src="ajax/email_conf.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://twitter.com/javascripts/blogger.js"></script>
    <script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline/EmpiricalThemes.json?callback=twitterCallback2&count=2"></script>
    </div>
    </form>
</body>
</html>
