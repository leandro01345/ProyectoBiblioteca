<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="BibliotecaWeb.Catalogo" %>
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
                    <asp:Label ID="lblVacio" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" CellPadding="4" CssClass="table" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IDDOCUMENTO" HeaderText="Id" HtmlEncode="False" SortExpression="IDDOCUMENTO" />
                        <asp:BoundField DataField="TITULODOCUMENTO" HeaderText="Título" HtmlEncode="False" SortExpression="TITULODOCUMENTO" />
                        <asp:BoundField DataField="AUTORDOCUMENTO" HeaderText="Autor" HtmlEncode="False" SortExpression="AUTORDOCUMENTO" />
                        <asp:BoundField DataField="EDICIONDOCUMENTO" HeaderText="Edición" HtmlEncode="False" SortExpression="EDICIONDOCUMENTO" />
                        <asp:BoundField DataField="EDITORIALDOCUMENTO" HeaderText="Editorial" HtmlEncode="False" SortExpression="EDITORIALDOCUMENTO" />
                        <asp:BoundField DataField="ANIODOCUMENTO" HeaderText="Año" HtmlEncode="False" SortExpression="ANIODOCUMENTO" />
                        <asp:BoundField DataField="TIPODOCUMENTO" HeaderText="Tipo" HtmlEncode="False" SortExpression="TIPODOCUMENTO" />
                        <asp:BoundField DataField="CATEGORIADOCUMENTO" HeaderText="Categoría" HtmlEncode="False" SortExpression="CATEGORIADOCUMENTO" />
                        <asp:BoundField DataField="CANTIDAD" HeaderText="Cantidad" HtmlEncode="False" SortExpression="CANTIDAD" />
                        <asp:BoundField DataField="DISPONIBLES" HeaderText="Disponibles" HtmlEncode="False" SortExpression="DISPONIBLES" />
                        <asp:BoundField DataField="PRESTADOS_SALA" HeaderText="Prestados en sala" HtmlEncode="False" SortExpression="PRESTADOS_SALA" />
                        <asp:TemplateField HeaderText="Agregar">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_CATALOGO&quot;" FilterExpression="CATEGORIADOCUMENTO LIKE '%{0}%' and TIPODOCUMENTO LIKE '%{1}%' and TITULODOCUMENTO LIKE '%{2}%' and AUTORDOCUMENTO LIKE '%{3}%' AND DISPONIBLES > 0">
                    <FilterParameters>
                        <asp:ControlParameter Name="CATEGORIA" ControlID="cboCategoria" PropertyName="SelectedValue" ConvertEmptyStringToNull="false"/>
                        <asp:ControlParameter Name="TIPO" ControlID="cboTipo" PropertyName="SelectedValue" ConvertEmptyStringToNull="false"/>
                        <asp:ControlParameter Name="TITULO" ControlID="txtTitulo" PropertyName="Text" ConvertEmptyStringToNull="false"/>
                        <asp:ControlParameter Name="AUTOR" ControlID="txtAutor" PropertyName="Text" ConvertEmptyStringToNull="false"/>
                    </FilterParameters>
                </asp:SqlDataSource>
                
                <br />
        <table __designer:mapid="2f" style="width: 100%;">
            <tr __designer:mapid="35">
                <td __designer:mapid="36" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="37" class="auto-style5">
                    <h3>Buscar</h3></td>
                <td __designer:mapid="37">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style6">Categoría</td>
                <td __designer:mapid="3c" class="auto-style7">
                
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_CATEGORIASDOC&quot;" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                <asp:DropDownList ID="cboCategoria" runat="server" DataSourceID="SqlDataSource2" DataTextField="CATEGORIADOCUMENTO" DataValueField="CATEGORIADOCUMENTO" Width="200px" AppendDataBoundItems="True" AutoPostBack="True">
                    <asp:ListItem Text="Todas" Value="" Selected="True" />
                </asp:DropDownList>
                </td>
                <td __designer:mapid="3c" class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style6">Tipo</td>
                <td __designer:mapid="3c" class="auto-style7">
                <asp:DropDownList ID="cboTipo" runat="server" DataSourceID="SqlDataSource3" DataTextField="TIPODOCUMENTO" DataValueField="TIPODOCUMENTO" Width="200px" AppendDataBoundItems="True" AutoPostBack="True">
                    <asp:ListItem Text="Todas" Value="" Selected="True" />
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_TIPOSDOC&quot;" OnSelecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
                </td>
                <td __designer:mapid="3c" class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">Autor</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:TextBox ID="txtAutor" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
                </td>
                <td __designer:mapid="3c">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">Titulo</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:TextBox ID="txtTitulo" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
                </td>
                <td __designer:mapid="3c">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:Button ID="btnAgregarASolicitud" runat="server" OnClick="btnAgregarASolicitud_Click" Text="Agregar a solicitud" />
                </td>
                <td __designer:mapid="3c">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">
                    <asp:Label ID="lblPrueba" runat="server" Visible="False"></asp:Label>
                </td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td __designer:mapid="3c">
                    &nbsp;</td>
            </tr>
        </table>
            </td>
        </tr>
    </table>


</asp:Content>

