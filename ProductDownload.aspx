<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDownload.aspx.cs"
    Inherits="ProductDownload" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title>Serba Dinamik | ProductDownloads</title>
    <link rel="shortcut icon" href="images/serbatitle.png" />
    <meta name="description" content="">
    <meta name="author" content="">
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
                        Products Online Downloads</h1>
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
                        <div class="twelve columns">
                            <h4>
                                <p class="link-location">
                                    You are here: <a href="Products.aspx">Products</a> / <a href="#">ProductDownloads</a>
                                    <%--/ <a href="#">Current Page</a>--%>
                                </p>
                                Our Products Online</h4>
                            <p>
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
                                <div class="parent first  active">
                                    <h6>
                                        <div class="accordion-caption">
                                        </div>
                                        AMS - AudioMetric Management System.</h6>
                                </div>
                                <div class="tcontent">
                                    <h5>
                                        <a href="#">Price : $<%= amsPrice %>
                                            USD</a></h5>
                                    <br />
                                    This software is used for plant's that involves in the manufacturing sectors. The
                                    software is used to keep track all the information related to the Audiometric test
                                    of the employee's. The software will help to provide report related to the DOSH.<br />
                                    Easy to provide Audiometric test result once it is completed. The report related
                                    to the company can produce with duration in few minutes. The report related to the
                                    DOSH can produce at anytime. The Data is maintained and secure.
                                    <br />
                                    <br />
                                    <a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/AMS.zip">
                                        <span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a href="License.aspx?product=AMS&desc=AudioMetric Management System">Get
                                            License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/AMSPresentation.ppt">
                                                Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price : $<%= chmsPrice%>
                                            USD</a></h5>
                                    <br />
                                    This software is used for plant's that involves in the manufacturing sectors. The
                                    software is used to keep track all the information related to the chemical in the
                                    workplace. The software will help to provide report related to the DOSH. The Submission
                                    of the CHMS should be done for every 4 years to DOSH.<br />
                                    The software will be helpful to store all the information related to the chemical
                                    in you plant's. There is no need to search for old Assessment data, we can also
                                    transfer the data from the old Assessment date to new Assessment date. The report
                                    related to the DOSH can produce at anytime. It will make the chemical Assessor job
                                    to become very easy for Assessment. The Data is maintained and secure.
                                    <br />
                                    <br />
                                    <a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/CHMS.zip">
                                        <span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a href="License.aspx?product=CHMS&desc=Chemical Hazard Management System">Get
                                            License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/CHMSPresentation.ppt">
                                                Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= fmatPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is a powerful tool that keeps track of all the plant equipments history of maintenance,
                                    spare parts replacements, failure modes and costs incurred.<br />
                                    Maintenance managers will be able to predict the next failure of their equipment
                                    and take the necessary steps to prolong the life of their equipements and generate
                                    reports.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="#"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= icnsPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is the application to be used for communication purpose from a certralized location
                                    to any other location where the client's software is installed.<br />
                                    This software is two way online communications where the client can send information,
                                    acknowledge information from the server.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/ICNSPresentation.ppt"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= imatPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is a tool that for any organization that is looking to improve the incident management
                                    system at their workplace.<br />
                                    It is powerful and comprehensive tool that covers every aspect of the incident happen
                                    in the plant also provide details to all the staff above the incidents.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/IMATPresentation.ppt"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= swimPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is web based system which tracks all schedule waste in an operating site, including
                                    information of storage, movement of waste disposal or recovery and invoices tracking.<br />
                                    It provides value added information to the company in terms of waste generation,
                                    cost incurred by each and every department or operating units. The standard reports
                                    are compiled in accordance to DOE requirements.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/SWIMPresentation.ppt"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= pcetPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is a program to calculate the cost estimates of projects to be done in any industry.<br />
                                    It breakdowns the cost into different variables and deliverables and generates reports.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="#"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= ppeiPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is a tool to assist to keep track of all the inventory of PPE and all data is
                                    capture and traceable by the software.<br />
                                    In case of any incident, it is traceable for the date of PPE issue and expiry during
                                    DOSH inspection and audit.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/PPEIPresentation.ppt"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= pprsPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is a system can be interfaced with the plant DCS system or any other system to
                                    read, store and analyze tank level information for the purpose of inventory control.<br />
                                    It can assist the production planners on daily inventory levels for production and
                                    raw meterial movements.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="#"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= rbiPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is a methodology used to define inspection program which have fired and unfired
                                    pressure vessels; as desribed by the API 580 recommended practice, the primary objective
                                    of RBI is that risk is taken into account when developing inspection plans on an
                                    equipment level.<br />
                                    As such, inspection data and status reports generated must submit to DOSH for approval.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="#"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= mocPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    It is most important software in a process plant to manage the changes that are
                                    made to machines to improve the efficiency of the plant.<br />
                                    This software also assists in tracking all the HSE parameters that are required
                                    to be checked and verified as per the company's HSE standard.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="<%= System.Configuration.ConfigurationSettings.AppSettings.Get("serverURL") %>downloads/MOCPresentation.ppt"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= myplantPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    MyPlant is specially designed and developed for operation and maintenance personnel
                                    usage to record, monitor and manage plant equipment information. It is a complete
                                    data logging system that includes software & hardware (PDA + peripherals) for plant
                                    performance and management activities.<br />
                                    Recorded data can be analyzed and used to predict or characterize equipment behavior
                                    for an accurate and timely decision making that in return optimize ROI & energy
                                    conserved.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="#"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= vibrasolvePrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    VibraSolve is a condition monitoring system (Hardware & Software) used to Analyze,
                                    Monitor, Keep Track, Record and manage vibration condition on equipment. The software
                                    is designed in such a way so that condition monitoring of machineries based on vibration
                                    measurement can be integrated throgh local area network.<br />
                                    This package will provide graphical user interface(GUI) of measurement identities.
                                    It will manage data acquisition & processing, sotrage & retrieval, analyze data
                                    and to the end, generates report for end users.
                                    <br />
                                    <br />
                                    <a href="#"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="#">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="#"> Download Presentation</a>
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
                                    <h5>
                                        <a href="#">Price :
                                            <%= alignsoftPrice %>
                                        </a>
                                    </h5>
                                    <br />
                                    An easy to use package consisting of hardware and software specially designed to
                                    solve critical alignment problems quickly, efficiently and economically. It is a
                                    tool to help field engineers/technicians to perform precision alignment, produce
                                    report and keep track of alignment records.<br />
                                    Misalignment corrected using AlignSoft™ will help reduce bearing & seal failure,
                                    prevent broken shafts, reduce production downtime and minimize energy losses.
                                    <br />
                                    <br />
                                    <a href="https://play.google.com/store/apps/details?id=serbadk.alignsoftV2" target="_blank"><span>Download Trial Version</span></a> &nbsp;&nbsp;|| &nbsp;&nbsp;<a
                                        href="https://play.google.com/store/apps/details?id=serbadk.alignsoftV2" target="_blank">Get License Key</a> &nbsp;&nbsp; || &nbsp;&nbsp;<a href="#"> Download Presentation</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="one-third column omega">
                        <div class="title-wrapper">
                            <div class="section-title">
                                <h4 class="title">
                                    Sales/Enquiries</h4>
                            </div>
                            <span class="divider"></span>
                           <%-- <div class="clear">
                            </div>--%>
                        </div>
                        <div class="form-result">
                        </div>
                        <form action="#" class="contactForm" id="contactus" name="contactus">
                         <p>
                          <span class="hr"></span>Phone: 603-5511 3213<br />
                                Fax: 603-5511 3212<br />
                               <a href="mailto:%
															<script language='JavaScript' type='text/javascript'>
															<!--
															    var prefix = '&#109;a' + 'i&#108;' + '&#116;o';
															    var path = 'hr' + 'ef' + '=';
															    var addy61015 = '20fnd' + '&#64;';
															    addy61015 = addy61015 + '&#101;-s&#101;rb&#97;dk' + '&#46;' + 'c&#111;m';
															    document.write('<a ' + path + '\'' + prefix + ':' + addy61015 + '\'>');
															    document.write(addy61015);
															    document.write('<\/a>');
															    //-->\n </script>
                                                                   <script language='JavaScript' type='text/javascript'>
															<!--
                                                                       document.write('<span style=\'display: none;\'>');
															//-->
															</script>This e-mail address is being protected from spambots. You need JavaScript enabled to view it
															<script language='JavaScript' type='text/javascript'>
															<!--
															    document.write('</');
															    document.write('span>');
															//-->
															</script>">
															<script language='JavaScript' type='text/javascript'>
															<!--
															    var prefix = '&#109;a' + 'i&#108;' + '&#116;o';
															    var path = 'hr' + 'ef' + '=';
															    var addy12220 = 'rndsales' + '&#64;';
															    addy12220 = addy12220 + '&#101;-s&#101;rb&#97;dk' + '&#46;' + 'c&#111;m';
															    document.write('<a ' + path + '\'' + prefix + ':' + addy12220 + '\'>');
															    document.write(addy12220);
															    document.write('<\/a>');
															    //-->\n </script><script language='JavaScript' type='text/javascript'>
															<!--
															                            document.write('<span style=\'display: none;\'>');
															//-->
															</script>This e-mail address is being protected from spambots. You need JavaScript enabled to view it
															<script language='JavaScript' type='text/javascript'>
															<!--
															    document.write('</');
															    document.write('span>');
															//-->
															</script></a> &nbsp;
															<a href="mailto:% <script language='JavaScript' type='text/javascript'>
															<!--
															                      var prefix = '&#109;a' + 'i&#108;' + '&#116;o';
															                      var path = 'hr' + 'ef' + '=';
															                      var addy61015 = '20fnd' + '&#64;';
															                      addy61015 = addy61015 + '&#101;-s&#101;rb&#97;dk' + '&#46;' + 'c&#111;m';
															                      document.write('<a ' + path + '\'' + prefix + ':' + addy61015 + '\'>');
															                      document.write(addy61015);
															                      document.write('<\/a>');
															                      //-->\n </script><script language='JavaScript' type='text/javascript'>
															<!--
															                            document.write('<span style=\'display: none;\'>');
															//-->
															</script>This e-mail address is being protected from spambots. You need JavaScript enabled to view it
															<script language='JavaScript' type='text/javascript'>
															<!--
															    document.write('</');
															    document.write('span>');
															//-->
															</script>">
															<script language='JavaScript' type='text/javascript'>
															<!--
															    var prefix = '&#109;a' + 'i&#108;' + '&#116;o';
															    var path = 'hr' + 'ef' + '=';
															    var addy12220 = 'enquiry' + '&#64;';
															    addy12220 = addy12220 + '&#101;-s&#101;rb&#97;dk' + '&#46;' + 'c&#111;m';
															    document.write('<a ' + path + '\'' + prefix + ':' + addy12220 + '\'>');
															    document.write(addy12220);
															    document.write('<\/a>');
															    //-->\n </script><script language='JavaScript' type='text/javascript'>
															<!--
															                            document.write('<span style=\'display: none;\'>');
															//-->
															</script>This e-mail address is being protected from spambots. You need JavaScript enabled to view it
															<script language='JavaScript' type='text/javascript'>
															<!--
															    document.write('</');
															    document.write('span>');
															//-->
															</script></a>
                                </p>
                        </form>
                        <br />
                    </div>
                    <div class="clear">
                    </div>
                    <div class="sixteen columns">
                        <span class="hr lip-quote"></span>
                        <blockquote class="standard bottom">
                            " Think Globally... Act Locally..."
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
