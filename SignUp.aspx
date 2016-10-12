<!------------------Responsive Website - Part 6 - Sign-Up Form, Button, Styling Class------------------------>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap ASP.NET Training - Sign Up</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/CustomStyle.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx">
                            <span>
                                <img alt="Logo" src="Images/Google.png" height="30" />
                            </span>
                            TechCybo
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Pants</a></li>
                                    <li><a href="#">Denim</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Women</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Top</a></li>
                                    <li><a href="#">Leggings</a></li>
                                    <li><a href="#">Denim</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="SignUp.aspx">Sign Up</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--Sign Up-->
        <!--Responsive Website - Part 6 - Sign-Up Form, Button, Styling Class-->
        <div class="center-page">
            <label class="col-xs-11">Username:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUname" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
            </div>
            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
            <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            </div>
            <label class="col-xs-11">Name:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
            </div>
            <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>
            <div class="col-xs-11 space-vert">
                <asp:Button ID="btSign" runat="server" class="btn btn-success" Text="Sign Up" OnClick="btSign_Click" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
        </div>

        

        <footer class="footer-pos">
            <div class="container">
                <hr />
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>
                    &copy; 2016 Didimowe &middot; <a href="Default.aspx">Home</a>
                    &middot; <a href="#">About</a> &middot; <a href="#">Contacts</a> &middot; <a href="#">Products</a>
                </p>
            </div>
        </footer>

        <!--Responsive Websiet - Part 7 - Sign-Up Form, Saving to DB, Validation-->
    </form>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
