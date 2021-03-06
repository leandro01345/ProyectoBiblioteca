﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BibliotecaWeb.Login" %>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sisbiblio</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="Css/form-elements.css" rel="stylesheet" />
        <link href="Css/style.css" rel="stylesheet" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>SisBiblio</strong> Login Form</h1>
                            <div class="description">
                            	<p>
	                            	Login para sistema de registro de información <strong>SisBiblio</strong>, y otras funcionalidades más!
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login</h3>
                            		<p>Ingresa tu usuario y contraseña:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom" runat="server">
			                    <form id="form1" runat="server">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
                                        <asp:TextBox ID="txtNomUsuario" cssclass="form-username form-control" runat="server"></asp:TextBox>
                                        <%--<input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">--%>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
                                        <asp:TextBox ID="txtPwd" cssclass="form-username form-control" runat="server" TextMode="Password"></asp:TextBox>
                                        <%--<input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">--%>
			                        </div>
                                    <asp:Button ID="BtnLogear" CssClass="btn" runat="server" Text="Iniciar Sesión" OnClick="BtnLogear_Click" Width="508px" />
                                    <%--<button type="submit" class="btn">Sign in!</button>--%>
                                    <br />
                                    <asp:Label ID="lblMsj" runat="server" ForeColor="Red"></asp:Label>
                                </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<!--<h3>...or login with:</h3-->
                        	<!--<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-facebook"></i> Facebook
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-twitter"></i> Twitter
	                        	</a>
	                        	<a class="btn btn-link-2" href="#">
	                        		<i class="fa fa-google-plus"></i> Google Plus
	                        	</a>
                        	</div>-->
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>
    <%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <style type="text/css">
        body {
 
        width: 200px;
        margin: 0 auto;
        margin-top: 100px;
        
        font-family: 'Open Sans Condensed', sans-serif;
        font-size: 20px;
        
        }
    </style>
    <title></title>
</head>
<body>
    
    <div>
    
    </div>
   
</body>--%>
</html>
