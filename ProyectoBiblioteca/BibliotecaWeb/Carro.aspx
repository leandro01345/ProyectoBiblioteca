<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carro.aspx.cs" Inherits="BibliotecaWeb.Carro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table __designer:mapid="2f" style="width: 100%;">
        <tr __designer:mapid="30">
            <td __designer:mapid="31" class="auto-style2">&nbsp;</td>
            <td __designer:mapid="32">
                <h2 __designer:mapid="33">Documentos</h2>
            </td>
        </tr>
        <tr __designer:mapid="35">
            <td __designer:mapid="36" class="auto-style3"></td>
            <td __designer:mapid="37" class="auto-style4">
                <br />
                
                <br />
        <table __designer:mapid="2f" style="width: 100%;">
            <tr __designer:mapid="35">
                <td __designer:mapid="36" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="37" class="auto-style5">
                    <h3>Confirmar Solicitud</h3></td>
                <td __designer:mapid="37">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style6">
                    &nbsp;</td>
                <td __designer:mapid="3c" class="auto-style7">
                
                    <asp:Label ID="lblListaCarro" runat="server"></asp:Label>
                    <asp:Label ID="lblVacio" runat="server"></asp:Label>
                    </td>
                <td __designer:mapid="3c" class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style6">&nbsp;</td>
                <td __designer:mapid="3c" class="auto-style7">
                    &nbsp;</td>
                <td __designer:mapid="3c" class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="3c" class="auto-style5">
                    &nbsp;</td>
                <td __designer:mapid="3c">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="3c" class="auto-style5">
                    &nbsp;</td>
                <td __designer:mapid="3c">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
                </td>
                <td __designer:mapid="3c">
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar carro" />
                </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">
                    <asp:Label ID="lblPrueba" runat="server"></asp:Label>
                </td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td __designer:mapid="3c">
                    &nbsp;</td>
            </tr>
        </table>
            </td>
        </tr>
    </table>
</asp:Content>
