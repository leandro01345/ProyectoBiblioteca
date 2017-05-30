<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    Bienvenid@ al sistema de Biblioteca BEC.
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="ctrLogin" runat="server" DisplayRememberMe="False" OnAuthenticate="ctrLogin_Authenticate">
        </asp:Login>

    </div>
    </form>
</body>
</html>
