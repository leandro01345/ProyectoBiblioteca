﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Solicitudes.aspx.cs" Inherits="BibliotecaWeb.Solicitudes" %>
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
                    <h2 __designer:mapid="33">Solicitudes pendientes</h2>
                </td>
            </tr>
            <tr __designer:mapid="35">
                <td __designer:mapid="36" class="auto-style3"></td>
                <td __designer:mapid="37" class="auto-style4">
                    <br />
                    <asp:GridView ID="grdSolicitudes" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdDocumentos_SelectedIndexChanged" CssClass="table">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="IDSOLICITUD" HeaderText="Id Solicitud" SortExpression="IDSOLICITUD" />
                            <asp:BoundField DataField="IDUSUARIO" HeaderText="Id Usuario" SortExpression="IDUSUARIO" />
                            <asp:BoundField DataField="NOMBREUSUARIO" HeaderText="Nombre de usuario" SortExpression="NOMBREUSUARIO" />
                            <asp:BoundField DataField="FECHA" HeaderText="Fecha" SortExpression="FECHA" />
                            <asp:BoundField DataField="HORA" HeaderText="Hora" SortExpression="HORA" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_SOLICITUDES_PENDIENTES&quot;"></asp:SqlDataSource>
                </td>
            </tr>
            </table>
        <p>
        </p>
        <table __designer:mapid="2f" style="width: 100%;">
            <tr __designer:mapid="35">
                <td __designer:mapid="36" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="37" class="auto-style5">
                    <h3>Generar préstamos</h3></td>
                <td __designer:mapid="37">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style6">&nbsp;</td>
                <td __designer:mapid="3c" class="auto-style7">
                    Id</td>
                <td __designer:mapid="3c" class="auto-style8">
                    <asp:TextBox ID="txtID" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtID" ErrorMessage="(*) Debe seleccionar una solicitud"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblIdSoli" runat="server" Visible="False">0</asp:Label>
                    <asp:Label ID="lblIdUsuario" runat="server" Visible="False">0</asp:Label>
                    </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style6">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_DETALLE_EJEMPLAR_TITULO&quot;" FilterExpression="SOLICITUD_IDSOLICITUD={0}">
                       <FilterParameters>
                        <asp:ControlParameter Name="SOLICITUD_IDSOLICITUD" ControlID="lblIdSoli" PropertyName="Text" DbType="Int32"/>
                    </FilterParameters>
                    </asp:SqlDataSource>
                </td>
                <td __designer:mapid="3c" class="auto-style8" colspan="2">
                    <asp:GridView ID="grdDetalles" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdDocumentos_SelectedIndexChanged" CssClass="table">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="SOLICITUD_IDSOLICITUD" HeaderText="SOLICITUD_IDSOLICITUD" SortExpression="SOLICITUD_IDSOLICITUD" />
                            <asp:BoundField DataField="EJEMPLAR_IDEJEMPLAR" HeaderText="EJEMPLAR_IDEJEMPLAR" SortExpression="EJEMPLAR_IDEJEMPLAR" />
                            <asp:BoundField DataField="TITULO" HeaderText="TITULO" SortExpression="TITULO" />
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
                </td>
            </tr>
            <tr __designer:mapid="3a">
                <td __designer:mapid="3b" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="3c" class="auto-style5">
                    <asp:Button ID="btnGenerarPrestamo" runat="server" Text="Generar préstamos" OnClick="btnGenerarPrestamo_Click" />
                </td>
                <td __designer:mapid="3c">
                    <asp:Button ID="btnCancelarSolicitud" runat="server" Text="Cancelar solicitud" />
                    <asp:HyperLink runat="server" NavigateUrl="Prestamos.aspx" ID="urlPrestamos" class="mdl-navigation__link">Administrar Préstamos</asp:HyperLink>
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
