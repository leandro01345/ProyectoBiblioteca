<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Documentos.aspx.cs" Inherits="BibliotecaWeb.Documentos" %>
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
            width: 221px;
        }
        .auto-style6 {
            width: 102px;
            height: 26px;
        }
        .auto-style7 {
            width: 221px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
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
                    <asp:GridView ID="grdDocumentos" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdDocumentos_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="IDDOCUMENTO" HeaderText="IDDOCUMENTO" HtmlEncode="False" SortExpression="IDDOCUMENTO" />
                            <asp:BoundField DataField="TITULODOCUMENTO" HeaderText="TITULODOCUMENTO" HtmlEncode="False" SortExpression="TITULODOCUMENTO" />
                            <asp:BoundField DataField="AUTORDOCUMENTO" HeaderText="AUTORDOCUMENTO" HtmlEncode="False" SortExpression="AUTORDOCUMENTO" />
                            <asp:BoundField DataField="EDICIONDOCUMENTO" HeaderText="EDICIONDOCUMENTO" HtmlEncode="False" SortExpression="EDICIONDOCUMENTO" />
                            <asp:BoundField DataField="EDITORIALDOCUMENTO" HeaderText="EDITORIALDOCUMENTO" HtmlEncode="False" SortExpression="EDITORIALDOCUMENTO" />
                            <asp:BoundField DataField="ANIODOCUMENTO" HeaderText="ANIODOCUMENTO" HtmlEncode="False" SortExpression="ANIODOCUMENTO" />
                            <asp:BoundField DataField="TIPODOCUMENTO" HeaderText="TIPODOCUMENTO" HtmlEncode="False" SortExpression="TIPODOCUMENTO" />
                            <asp:BoundField DataField="CATEGORIADOCUMENTO" HeaderText="CATEGORIADOCUMENTO" HtmlEncode="False" SortExpression="CATEGORIADOCUMENTO" />
                            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" HtmlEncode="False" SortExpression="CANTIDAD" />
                            <asp:BoundField DataField="DISPONIBLES" HeaderText="DISPONIBLES" HtmlEncode="False" SortExpression="DISPONIBLES" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_CATALOGO&quot;"></asp:SqlDataSource>
                </td>
            </tr>
            </table>
        <p>
        </p>
        <table __designer:mapid="2f" style="width: 100%;">
            <tr __designer:mapid="35">
                <td __designer:mapid="36" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="37" class="auto-style5">
                    <h3>Modificar</h3></td>
                <td __designer:mapid="37">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style6">ID</td>
                <td __designer:mapid="3c" class="auto-style7">
                    <asp:TextBox ID="txtID" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td __designer:mapid="3c" class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtID" ErrorMessage="(*) Debe seleccionar un documento"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style6">Título</td>
                <td __designer:mapid="3c" class="auto-style7">
                    <asp:TextBox ID="txtTitulo" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td __designer:mapid="3c" class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTitulo" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">Autor</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:TextBox ID="txtAutor" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAutor" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">Edición</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:TextBox ID="txtEdicion" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEdicion" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">Editorial</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:TextBox ID="txtEditorial" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEditorial" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">Año</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:TextBox ID="txtAnio" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAnio" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">Tipo</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:TextBox ID="txtTipo" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtTipo" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">Categoría</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:TextBox ID="txtCategoria" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td __designer:mapid="3c">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCategoria" ErrorMessage="(*) Obligatorio"></asp:RequiredFieldValidator>
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
    </div>
</asp:Content>
