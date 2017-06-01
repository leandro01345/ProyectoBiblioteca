<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuevoUsuario.aspx.cs" Inherits="BibliotecaWeb.NuevoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <!-- Material Design Lite -->
    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css"/>
    <!-- Material Design icon font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
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

        .auto-style9 {
            width: 168px;
            height: 30px;
        }
        .auto-style10 {
            width: 499px;
            height: 30px;
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
            <td __designer:mapid="48" label label-default">Rut:</td>
            <td __designer:mapid="49" class="auto-style10">
                <asp:TextBox ID="txtRut" cssclass="form-control" runat="server" Width="90px"></asp:TextBox>
                -<asp:TextBox ID="txtDVRut" cssclass="form-control" runat="server" Width="16px"></asp:TextBox>
            </td>
            <td __designer:mapid="49" class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRut" ErrorMessage="(*) Obligatorio" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDVRut" ErrorMessage="(*) Debe incluir dígito verificador" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtRut" ErrorMessage="(*) El Rut debe ser numérico" Operator="DataTypeCheck" Type="Integer" CssClass="alert alert-warning" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr __designer:mapid="4c">
            <td _ label label-default >Nombres:</td>
            <td __designer:mapid="4e" class="auto-style9">
                <asp:TextBox ID="txtNombres" cssclass="form-control" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td __designer:mapid="4e" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" ErrorMessage="(*) Obligatorio" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52"  label label-default>Apellidos:</td>
            <td __designer:mapid="53" class="auto-style12">

               <asp:TextBox ID="txtApellidos" cssclass="form-control" runat="server" Width="90px"></asp:TextBox>
 
            </td>
            <td __designer:mapid="53" class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidos" ErrorMessage="(*) Obligatorio" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52"  label label-default>Dirección:</td>
            <td __designer:mapid="53" class="auto-style9">
                <asp:TextBox ID="txtDireccion" cssclass="form-control" runat="server" Width="218px"></asp:TextBox>
            </td>
            <td __designer:mapid="53" class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDireccion" ErrorMessage="(*) Obligatorio" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52"  label label-default>Teléfono:</td>
            <td __designer:mapid="53" class="auto-style9">
                <asp:TextBox ID="txtTelefono" cssclass="form-control" runat="server" Width="97px"></asp:TextBox>
            </td>
            <td __designer:mapid="53" class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="(*) Obligatorio" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtTelefono" ErrorMessage="(*) Debe ser un número" Operator="DataTypeCheck" Type="Integer" CssClass="alert alert-warning" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" label label-default>Foto:</td>
            <td __designer:mapid="53" class="auto-style15">
                <asp:CheckBox ID="chkFoto" cssclass="mdl-checkbox__input" runat="server" />
            </td>
            <td __designer:mapid="53" class="auto-style16">
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" label label-default>Huella:</td>
            <td __designer:mapid="53" class="auto-style9">
                <asp:CheckBox ID="chkHuella" cssclass="mdl-checkbox__input" runat="server" />
            </td>
            <td __designer:mapid="53" class="auto-style7">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" label label-default>Correo de verificación:</td>
            <td __designer:mapid="53" class="auto-style9">
                <asp:TextBox ID="txtCorreo" cssclass="form-control" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td __designer:mapid="53" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCorreo" ErrorMessage="(*) Obligatorio" CssClass="alert alert-warning" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreo" ErrorMessage="(*) Formato aa@bb.cc" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="alert alert-warning" ForeColor="Red"></asp:RegularExpressionValidator>
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
                <asp:Button ID="btnAgregarUsuario"  cssclass="mdl-button mdl-js-button mdl-button--primary" runat="server" OnClick="btnAgregarUsuario_Click1" Text="Agregar Usuario" />
                &nbsp;&nbsp;
                <asp:Button ID="btnLimpiarFormulario" cssclass="mdl-button mdl-js-button mdl-button--primary" runat="server" OnClick="btnLimpiarFormulario_Click" Text="Limpiar Formulario" />
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
