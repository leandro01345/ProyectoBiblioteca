<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ejemplares.aspx.cs" Inherits="BibliotecaWeb.Ejemplares" %>
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
            <td __designer:mapid="31" class="auto-style6"></td>
            <td __designer:mapid="32" class="auto-style7">
                <h2 __designer:mapid="33">Ejemplares</h2>
            </td>
        </tr>
        <tr __designer:mapid="35">
            <td __designer:mapid="36" class="auto-style3"></td>
            <td __designer:mapid="37" class="auto-style4">
                <br />
                <asp:GridView ID="grdEjemplares" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdEjemplares_SelectedIndexChanged" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IDEJEMPLAR" HeaderText="ID" HtmlEncode="False" SortExpression="IDEJEMPLAR" />
                        <asp:BoundField DataField="TITULODOCUMENTO" HeaderText="Título" HtmlEncode="False" SortExpression="TITULODOCUMENTO" />
                        <asp:BoundField DataField="ESTADOEJEMPLAR" HeaderText="Estado" HtmlEncode="False" SortExpression="ESTADOEJEMPLAR" />
                        <asp:BoundField DataField="UBICACIONEJEMPLAR" HeaderText="Ubicación" HtmlEncode="False" SortExpression="UBICACIONEJEMPLAR" />
                        <asp:BoundField DataField="IDDOCUMENTO" HeaderText="ID Documento" HtmlEncode="False" SortExpression="IDDOCUMENTO" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_EJEMPLARES&quot;"></asp:SqlDataSource>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtID" ErrorMessage="(*) Debe seleccionar un ejemplar"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Título</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:TextBox ID="txtTitulo" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:TextBox ID="txtIDDocumento" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged" Visible="False" Width="29px"></asp:TextBox>
            </td>
            <td __designer:mapid="3c">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Estado</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:TextBox ID="txtEstado" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEstado" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="3a">
            <td __designer:mapid="3b" class="auto-style2">Ubicación</td>
            <td __designer:mapid="3c" class="auto-style5">
                <asp:TextBox ID="txtUbicacion" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUbicacion" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
            </td>
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
