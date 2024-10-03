<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="Careers" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Serba Dinamik | Careers</title>
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
                                    <li><a href="#" class="active">About Us</a>
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
                                    <li><a href="Products.aspx">Products</a></li>
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
                        Carrers</h1>
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
                                    You are here: <a href="index.html">About Us</a> / <a href="#">Carrers</a><!-- / <a href="#">Current Page</a>--></p>
                                Send us your Resume</h4>
                        </div>
                        <%-- <div class="">
                            <div class="">
                                <form action="">
                                <input type="text" class="search-box" name="" value="" placeholder='Search...' />
                                <input type="image" src="images/design/search-icon.png" class="searchbox-submit"
                                    value="" />
                                </form>
                            </div>--%>
                    </div>
                </div>
                <div class="callout-hr">
                </div>
                <div class="container">
                    <div class="contact eleven columns">
                        <div class="standard-form compressed style-2">
                            <%--<h5 class="semi title style-2">
                                    Contact Form</h5>--%>
                            <div class="form-result">
                            </div>
                            <form action="#" class="contactForm" id="contactus" name="contactus">
                            <asp:DropDownList ID="JobtitleDD" runat="server" class="tb10" placeholder="Job *">
                                <asp:ListItem><-- Select Job Title --></asp:ListItem>
                                <asp:ListItem>Human Resource</asp:ListItem>
                                <asp:ListItem>Finance</asp:ListItem>
                                <asp:ListItem>Procurement</asp:ListItem>
                                <asp:ListItem>Mechanical</asp:ListItem>
                                <asp:ListItem>Electrical</asp:ListItem>
                                <asp:ListItem>Construction &amp; Fabrication</asp:ListItem>
                                <asp:ListItem>Trading</asp:ListItem>
                                <asp:ListItem>IT Solutions</asp:ListItem>
                                <asp:ListItem>Administration</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:TextBox ID="contact_name" class="tb10" runat="server" placeholder='Name *'></asp:TextBox>
                            <br />
                            <asp:TextBox ID="contact_email" class="tb10" runat="server" placeholder="Email *"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="contact_subject" class="tb10  extend" runat="server" Width="450px"
                                placeholder="Subject"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="contact_msg" runat="server" TextMode="MultiLine" class="tb10" placeholder="Message *"
                                Width="450px" Height="100px"></asp:TextBox>
                            <br />
                            <asp:FileUpload ID="fuAttachment" runat="server" Width="200px" Height="100%" ToolTip="Max Size: 4MB" /><br />
                            <asp:Image ID="imgCaptcha" runat="server" />
                            <br />
                            <asp:TextBox ID="txtCaptcha" runat="server" class="tb10" placeholder="Enter Code *"
                                Width="100px"></asp:TextBox>
                            <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Enter Above Given Code"
                                    ControlToValidate="txtCaptcha"></asp:RequiredFieldValidator>--%>
                            <asp:Label ID="lblMsg" runat="server" Width="240px" Height="20px" Font-Names="Georgia"
                                ForeColor="#ff0000"></asp:Label>
                            <input type="button" value="Submit" id="A1" class="myButton" runat="server" onserverclick="Btn_SendMail_Click" />
                            <%-- <div class="submit">
                                        <a class="button color" runat="server" href="#" onserverclick="Btn_SendMail_Click"><span>Submit</span></a>
                                </div>--%>
                            <div class="clear">
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="five columns">
                        <%--   <h5 class="semi">On the Map</h5>--%>
                        <%--  <div class="maps">
                                <iframe width="100%" height="140" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=google&amp;aq=&amp;sll=37.6,-95.665&amp;sspn=38.949025,86.572266&amp;ie=UTF8&amp;hq=google&amp;hnear=&amp;t=m&amp;cid=10048610331046050672&amp;ll=40.744071,-74.002533&amp;spn=0.02276,0.036564&amp;z=14&amp;output=embed"></iframe><div class="clear"></div>
                            </div>--%>
                        <h5 class="semi">
                            Contact Info</h5>
                        <p>
                            7-5, Pusat Dagangan UMNO Shah Alam,<br />
                            Lot 8, Persiaran Damai, Seksyen 11,<br />
                            40100<br />
                            Shah Alam<br />
                            Selangor Darul Ehsan<br />
                            Malaysia<br />
                            <span class="hr"></span>Phone: 603-5511 3213<br />
                            Fax: 603-5511 3212<br />
                            Email: humanresource@e-serbadk.com<br />
                            Web: www.e-serbadk.com
                        </p>
                        <h5 class="semi">
                           <span>Current</span>  Vacancies
                        </h5>
                        <ul class="slide testimonials clr overlap">
                            <li>
                                <h6>
                                    Android Programmer</h6>
                                <p>
                                    <strong>Qualification :</strong> Diploma or Degree.<br />
                                    <strong>Skills :</strong>Looking for good knowledge in Android Apps development
                                    and more than 5 years experienced in this field.
                                </p>
                            </li>
                            <li>
                                 <h6>
                                    .Net Programmer</h6>
                                <p>
                                    <strong>Qualification :</strong> Diploma or Degree.<br />
                                    <strong>Skills :</strong>Looking for good knowledge in .Net Web and Application Development and more than 5 years experienced in this field. 
                                </p>
                            </li>
                           
                        </ul>
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
    <script type="text/javascript">
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
    </script>
    <script type="text/javascript" src="js/jquery.color.animation.js"></script>
    <script src="ajax/ajax_default.js" type="text/javascript"></script>
    <script src="ajax/email_conf.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://twitter.com/javascripts/blogger.js"></script>
    <script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline/EmpiricalThemes.json?callback=twitterCallback2&count=2"></script>
    </div>
    </form>
</body>
</html>
