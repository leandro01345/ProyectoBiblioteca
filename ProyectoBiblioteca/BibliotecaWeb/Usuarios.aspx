<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="BibliotecaWeb.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            width: 102px;
        }
        .auto-style3 {
            width: 102px;
            height: 386px;
        }
        .auto-style4 {
            height: 386px;
        }
        .auto-style5 {
            width: 218px;
        }
        .auto-style6 {
            width: 102px;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table __designer:mapid="2f" style="width: 100%;">
        <tr __designer:mapid="30">
            <td __designer:mapid="31" class="auto-style2">&nbsp;</td>
            <td __designer:mapid="32">
                <h2 __designer:mapid="33">Usuarios</h2>
            </td>
        </tr>
        <tr __designer:mapid="35">
            <td __designer:mapid="36" class="auto-style3"></td>
            <td __designer:mapid="37" class="auto-style4">
                <br />
                <asp:GridView ID="grdUsuarios" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdUsuarios_SelectedIndexChanged" DataKeyNames="IDUSUARIO">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IDUSUARIO" HeaderText="ID" SortExpression="IDUSUARIO" ReadOnly="True" HtmlEncode="False" />
                        <asp:BoundField DataField="RUTUSUARIO" HeaderText="Rut" SortExpression="RUTUSUARIO" HtmlEncode="False" />
                        <asp:BoundField DataField="NOMBRESUSUARIO" HeaderText="Nombres" SortExpression="NOMBRESUSUARIO" HtmlEncode="False" />
                        <asp:BoundField DataField="APELLIDOSUSUARIO" HeaderText="Apellidos" SortExpression="APELLIDOSUSUARIO" HtmlEncode="False" />
                        <asp:BoundField DataField="DIRECCIONUSUARIO" HeaderText="Dirección" SortExpression="DIRECCIONUSUARIO" HtmlEncode="False" />
                        <asp:BoundField DataField="TELEFONOUSUARIO" HeaderText="Teléfono" SortExpression="TELEFONOUSUARIO" HtmlEncode="False" />
                        <asp:BoundField DataField="ACTIVOUSUARIO" HeaderText="Activo" SortExpression="ACTIVOUSUARIO" HtmlEncode="False" />
                        <asp:BoundField DataField="HUELLAUSUARIO" HeaderText="Huella" SortExpression="HUELLAUSUARIO" HtmlEncode="False" />
                        <asp:BoundField DataField="FOTOUSUARIO" HeaderText="Foto" SortExpression="FOTOUSUARIO" HtmlEncode="False" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;USUARIO&quot;"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <table __designer:mapid="2f" style="width: 100%;">
        <tr __designer:mapid="35">
            <td __designer:mapid="36" class="auto-style2">&nbsp;</td>
            <td __designer:mapid="37" class="auto-style5"><h3>Modificar</h3></td>
            <td __designer:mapid="37">&nbsp;</td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">ID</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:TextBox ID="txtID" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtID" ErrorMessage="(*) Debe seleccionar un usuario"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Rut</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:TextBox ID="txtRut" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td __designer:mapid="3c">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Nombres</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:TextBox ID="txtNombres" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Apellidos</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:TextBox ID="txtApellidos" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidos" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style6">Dirección</td>
            <td __designer:mapid="3c" class="auto-style7">
                <asp:TextBox ID="txtDireccion" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td __designer:mapid="3c" class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDireccion" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Teléfono</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:TextBox ID="txtTelefono" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTelefono" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtTelefono" ErrorMessage="(*) Debe ser un número" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Activo</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:CheckBox ID="chkActivo" runat="server" />
            </td>
            <td __designer:mapid="3c">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Foto</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:CheckBox ID="chkFoto" runat="server" />
            </td>
            <td __designer:mapid="3c">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Huella</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:CheckBox ID="chkHuella" runat="server" />
            </td>
            <td __designer:mapid="3c">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">&nbsp;</td>
            <td __designer:mapid="3c" class="auto-style5">
                    <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
            </td>
            <td __designer:mapid="3c">
                <asp:Button ID="btnEliminar" runat="server" CssClass="btn-default" OnClick="btnEliminar_Click" Text="Eliminar" />
            </td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">&nbsp;</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </td>
            <td __designer:mapid="3c">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
