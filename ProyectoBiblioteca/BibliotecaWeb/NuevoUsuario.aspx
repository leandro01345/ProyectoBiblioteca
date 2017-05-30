<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuevoUsuario.aspx.cs" Inherits="BibliotecaWeb.NuevoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 168px;
        }
        .auto-style7 {
        width: 499px;
    }
        .auto-style5 {
            width: 168px;
            height: 29px;
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
            <td __designer:mapid="44" class="auto-style9">
                <h2 __designer:mapid="45">Nuevo Usuario</h2>
            </td>
            <td __designer:mapid="44" class="auto-style7">&nbsp;</td>
        </tr>
        <tr __designer:mapid="47">
            <td __designer:mapid="48" class="auto-style5">Rut:</td>
            <td __designer:mapid="49" class="auto-style10">
                <asp:TextBox ID="txtRut" runat="server" Width="90px"></asp:TextBox>
                -<asp:TextBox ID="txtDVRut" runat="server" Width="16px"></asp:TextBox>
            </td>
            <td __designer:mapid="49" class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRut" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDVRut" ErrorMessage="(*) Debe incluir dígito verificador"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtRut" ErrorMessage="(*) El Rut debe ser numérico" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr __designer:mapid="4c">
            <td __designer:mapid="4d" class="auto-style3">Nombres:</td>
            <td __designer:mapid="4e" class="auto-style9">
                <asp:TextBox ID="txtNombres" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td __designer:mapid="4e" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" class="auto-style11">Apellidos:</td>
            <td __designer:mapid="53" class="auto-style12">
                <asp:TextBox ID="txtApellidos" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td __designer:mapid="53" class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidos" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" class="auto-style3">Dirección:</td>
            <td __designer:mapid="53" class="auto-style9">
                <asp:TextBox ID="txtDireccion" runat="server" Width="218px"></asp:TextBox>
            </td>
            <td __designer:mapid="53" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDireccion" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" class="auto-style3">Teléfono:</td>
            <td __designer:mapid="53" class="auto-style9">
                <asp:TextBox ID="txtTelefono" runat="server" Width="97px"></asp:TextBox>
            </td>
            <td __designer:mapid="53" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtTelefono" ErrorMessage="(*) Debe ser un número" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" class="auto-style14">Foto:</td>
            <td __designer:mapid="53" class="auto-style15">
                <asp:CheckBox ID="chkFoto" runat="server" />
            </td>
            <td __designer:mapid="53" class="auto-style16">
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" class="auto-style3">Huella:</td>
            <td __designer:mapid="53" class="auto-style9">
                <asp:CheckBox ID="chkHuella" runat="server" />
            </td>
            <td __designer:mapid="53" class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" class="auto-style3">Correo de verificación:</td>
            <td __designer:mapid="53" class="auto-style9">
                <asp:TextBox ID="txtCorreo" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td __designer:mapid="53" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCorreo" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreo" ErrorMessage="(*) Formato aa@bb.cc" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" class="auto-style3">&nbsp;</td>
            <td __designer:mapid="53" class="auto-style9">
                &nbsp;</td>
            <td __designer:mapid="53" class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="65">
            <td __designer:mapid="66" class="auto-style3">&nbsp;</td>
            <td __designer:mapid="67" class="auto-style4" colspan="2">
                <asp:Button ID="btnAgregarUsuario" runat="server" OnClick="btnAgregarUsuario_Click1" Text="Agregar Usuario" />
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
