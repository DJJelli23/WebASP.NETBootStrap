<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap ASP.NET Training - Sign In</title>

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
    <!--Responsive Website - Part 8 - Login Page Design with Validation Controls-->
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
                            <li><a href="SignUp.aspx">Sign Up</a></li>
                            <li class="active"><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>

            </div>
            <div class="container">
                <h2>Login</h2>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" class="col-md-2 control-label" Text="Username"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="UserName" class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" 
                                runat="server" ErrorMessage="The Username is required!" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" class="col-md-2 control-label" Text="Password"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="Password" class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="text-danger" 
                                runat="server" ErrorMessage="The Password is required!" ControlToValidate="Password"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                            <asp:Label ID="Label3" runat="server" class="control-label" Text="Remember me?"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-default" OnClick="Button1_Click" />
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <div class="container">
                    <hr />
                    <p class="pull-right"><a href="#">Back to top</a></p>
                    <p>
                        &copy; 2016 Didimowe &middot; <a href="Default.aspx">Home</a>
                        &middot; <a href="#">About</a> &middot; <a href="#">Contacts</a> &middot; <a href="#">Products</a>
                    </p>
                </div>
            </footer>
        </div>
    </form>
    <!--Responsive Website - Part 8 - Login Page Design with Validation Controls-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
