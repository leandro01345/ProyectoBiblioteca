<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BibliotecaWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="Css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/Content/bootstrap.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
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
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="ctrLogin" runat="server" DisplayRememberMe="False" OnAuthenticate="ctrLogin_Authenticate">
        </asp:Login>
    
    </div>
    </form>
</body>
</html>
