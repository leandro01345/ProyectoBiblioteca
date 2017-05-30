<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuevoEjemplar.aspx.cs" Inherits="BibliotecaWeb.NuevoEjemplar" %>
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
            <td __designer:mapid="44" class="auto-style7">
                <h2 __designer:mapid="45">Nuevo Ejemplar</h2>
            </td>
            <td __designer:mapid="44" class="auto-style7">&nbsp;</td>
        </tr>
        <tr __designer:mapid="47">
            <td __designer:mapid="48" class="auto-style5">Documento:</td>
            <td __designer:mapid="49" class="auto-style8">
                <asp:DropDownList ID="cboDocumentos" runat="server" DataSourceID="SqlDataSource1" DataTextField="TITULODOCUMENTO" DataValueField="IDDOCUMENTO" Width="200px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;IDDOCUMENTO&quot;, &quot;TITULODOCUMENTO&quot; FROM &quot;DOCUMENTO&quot;"></asp:SqlDataSource>
            </td>
            <td __designer:mapid="49" class="auto-style8">
                <asp:RequiredFieldValidator ID="valProveedor" runat="server" ControlToValidate="cboDocumentos" ErrorMessage="(*) Debe seleccionar un documento" InitialValue="Seleccione"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="4c">
            <td __designer:mapid="4d" class="auto-style3">Estado:</td>
            <td __designer:mapid="4e" class="auto-style7">
                <asp:TextBox ID="txtEstado" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td __designer:mapid="4e" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEstado" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="51">
            <td __designer:mapid="52" class="auto-style3">Ubicación:</td>
            <td __designer:mapid="53" class="auto-style7">
                <asp:TextBox ID="txtUbicacion" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td __designer:mapid="53" class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUbicacion" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="65">
            <td __designer:mapid="66" class="auto-style3">&nbsp;</td>
            <td __designer:mapid="67" class="auto-style4" colspan="2">
                <asp:Button ID="btnAgregarEjemplar" runat="server" OnClick="btnAgregarEjemplar_Click1" Text="Agregar Ejemplar" />
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
