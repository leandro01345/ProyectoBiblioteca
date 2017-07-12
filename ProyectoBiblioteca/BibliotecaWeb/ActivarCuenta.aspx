<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ActivarCuenta.aspx.cs" Inherits="BibliotecaWeb.ActivarCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Css/style.css" rel="stylesheet" />
    <p>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Bienvenid@ a BEC, para validar su cuenta ingrese su RUT. Será necesario iniciar sesión nuevamente después de validar."></asp:Label>
    </p>
    <p>
        <td __designer:mapid="3c" class="auto-style5">
                    Rut del usuario:</td>
                <td __designer:mapid="3c">
                    <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                    -<asp:TextBox ID="txtDv" runat="server" Width="16px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRut" ErrorMessage="(*) Obligatorio" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtRut" ErrorMessage="(*) El Rut debe ser numérico" Operator="DataTypeCheck" Type="Integer" CssClass="alert alert-warning" ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDv" ErrorMessage="(*) Debe incluir dígito verificador" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
    </p>
    <p>
        <asp:Button ID="btnValidar" runat="server" Text="Validar cuenta" OnClick="btnValidar_Click" />
    </p>
    <p>
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    </p>
    
</asp:Content>
