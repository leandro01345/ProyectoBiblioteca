<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuevoDocumento.aspx.cs" Inherits="BibliotecaWeb.NuevoDocumento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 168px;
        }
        .auto-style4 {
        }
        .auto-style5 {
            width: 168px;
            height: 29px;
        }
        .auto-style6 {
            width: 776px;
            height: 29px;
        }
        .auto-style7 {
            width: 499px;
        }
        .auto-style8 {
            width: 499px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table __designer:mapid="41" style="width: 100%;">
            <tr __designer:mapid="42">
                <td __designer:mapid="43" class="auto-style3">&nbsp;</td>
                <td __designer:mapid="44" class="auto-style7">
                    <h2 __designer:mapid="45">Nuevo Documento</h2>
                </td>
                <td __designer:mapid="44" class="auto-style4">&nbsp;</td>
            </tr>
            <tr __designer:mapid="47">
                <td __designer:mapid="48" class="auto-style5">Título:</td>
                <td __designer:mapid="49" class="auto-style8">
                    <asp:TextBox ID="txtTitulo" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td __designer:mapid="49" class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitulo" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="4c">
                <td __designer:mapid="4d" class="auto-style3">Autor:</td>
                <td __designer:mapid="4e" class="auto-style7">
                    <asp:TextBox ID="txtAutor" runat="server" Width="90px"></asp:TextBox>
                </td>
                <td __designer:mapid="4e" class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAutor" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="51">
                <td __designer:mapid="52" class="auto-style3">Año:</td>
                <td __designer:mapid="53" class="auto-style7">
                    <asp:TextBox ID="txtAnio" runat="server" Width="90px"></asp:TextBox>
                </td>
                <td __designer:mapid="53" class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAnio" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="56">
                <td __designer:mapid="57" class="auto-style3">Editorial:</td>
                <td __designer:mapid="58" class="auto-style7">
                    <asp:TextBox ID="txtEditorial" runat="server" Width="90px"></asp:TextBox>
                </td>
                <td __designer:mapid="58" class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEditorial" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="5b">
                <td __designer:mapid="5c" class="auto-style3">Edición:</td>
                <td __designer:mapid="5d" class="auto-style7">
                    <asp:TextBox ID="txtEdicion" runat="server" Width="90px"></asp:TextBox>
                </td>
                <td __designer:mapid="5d" class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEdicion" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="60">
                <td __designer:mapid="61" class="auto-style3">Tipo:</td>
                <td __designer:mapid="62" class="auto-style7">
                    <asp:TextBox ID="txtTipo" runat="server" Width="90px"></asp:TextBox>
                </td>
                <td __designer:mapid="62" class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTipo" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="60">
                <td __designer:mapid="61" class="auto-style3">Categoría:</td>
                <td __designer:mapid="62" class="auto-style7">
                    <asp:TextBox ID="txtCategoria" runat="server" Width="90px"></asp:TextBox>
                </td>
                <td __designer:mapid="62" class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCategoria" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="65">
                <td __designer:mapid="66" class="auto-style3">&nbsp;</td>
                <td __designer:mapid="67" class="auto-style4" colspan="2">
                    <asp:Button ID="btnAgregarDocumento" runat="server" Text="Agregar Documento" OnClick="btnAgregarDocumento_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnLimpiarFormulario" runat="server" OnClick="btnLimpiarFormulario_Click" Text="Limpiar Formulario" />
                </td>
            </tr>
            <tr __designer:mapid="65">
                <td __designer:mapid="66" class="auto-style3">&nbsp;</td>
                <td __designer:mapid="67" class="auto-style4" colspan="2">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
