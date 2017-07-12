<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Prestamos.aspx.cs" Inherits="BibliotecaWeb.Prestamos" %>
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table __designer:mapid="2f" style="width: 100%;">
            <tr __designer:mapid="30">
                <td __designer:mapid="31" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="32">
                    <h2 __designer:mapid="33">Préstamos vencidos en sala</h2>
                </td>
            </tr>
            <tr __designer:mapid="35">
                <td __designer:mapid="36" class="auto-style3"></td>
                <td __designer:mapid="37" class="auto-style4">
                    <br />
                    <asp:GridView ID="grdSolicitudes" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdDocumentos_SelectedIndexChanged" CssClass="table">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="EJEMPLAR_IDEJEMPLAR" HeaderText="Id Ejemplar" SortExpression="EJEMPLAR_IDEJEMPLAR" />
                            <asp:BoundField DataField="IDPRESTAMO" HeaderText="Id Préstamo" SortExpression="IDPRESTAMO" />
                            <asp:BoundField DataField="TIPOPRESTAMO" HeaderText="Tipo" SortExpression="TIPOPRESTAMO" />
                            <asp:BoundField DataField="FECHAPRESTAMO" HeaderText="Fecha de préstamo" SortExpression="FECHAPRESTAMO" />
                            <asp:BoundField DataField="FECHADEVOLUCIONPRESTAMO" HeaderText="Fecha de devolución" SortExpression="FECHADEVOLUCIONPRESTAMO" />
                            <asp:BoundField DataField="USUARIO_IDUSUARIO" HeaderText="Id Usuario" SortExpression="USUARIO_IDUSUARIO" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_PRESTAMOS_VENCIDOS_SALA&quot;"></asp:SqlDataSource>
                </td>
            </tr>
            </table>
        <p>
        </p>
        <table __designer:mapid="2f" style="width: 100%;">
            <tr __designer:mapid="30">
                <td __designer:mapid="31" class="auto-style2">&nbsp;</td>
                <td __designer:mapid="32">
                    <h2 __designer:mapid="33">Préstamos vencidos a domicilio</h2>
                </td>
            </tr>
            <tr __designer:mapid="35">
                <td __designer:mapid="36" class="auto-style3"></td>
                <td __designer:mapid="37" class="auto-style4">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdDocumentos_SelectedIndexChanged" CssClass="table">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="EJEMPLAR_IDEJEMPLAR" HeaderText="Id Ejemplar" SortExpression="EJEMPLAR_IDEJEMPLAR" />
                            <asp:BoundField DataField="IDPRESTAMO" HeaderText="Id Préstamo" SortExpression="IDPRESTAMO" />
                            <asp:BoundField DataField="TIPOPRESTAMO" HeaderText="Tipo" SortExpression="TIPOPRESTAMO" />
                            <asp:BoundField DataField="FECHAPRESTAMO" HeaderText="Fecha" SortExpression="FECHAPRESTAMO" />
                            <asp:BoundField DataField="FECHADEVOLUCIONPRESTAMO" HeaderText="Fecha de devolución" SortExpression="FECHADEVOLUCIONPRESTAMO" />
                            <asp:BoundField DataField="USUARIO_IDUSUARIO" HeaderText="Id Usuario" SortExpression="USUARIO_IDUSUARIO" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;V_PRESTAMOS_VENCIDOS_DOMICILIO&quot;"></asp:SqlDataSource>
                    <asp:Button ID="btnEnviarRecordatorio" runat="server" OnClick="btnEnviarRecordatorio_Click" Text="Enviar recordatorio de devolución" />
                    <br />
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            </table>
    </div>
</asp:Content>
