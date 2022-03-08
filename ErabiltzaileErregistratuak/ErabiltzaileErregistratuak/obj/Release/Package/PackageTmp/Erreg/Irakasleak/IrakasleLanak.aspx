<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IrakasleLanak.aspx.vb" Inherits="ErabiltzaileErregistratuak.IrakasleLanak" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:auto;width:1100px;">
            <div style="background:#97bee6;padding:1px;border: 3px solid #7596b8;border-radius:3px">
                <center>
                    <h2>IRAKASLEA<br/>LAN GENERIKOEN KUDEAKETA</h2>
                </center>
            </div>
            <asp:SqlDataSource ID="sqldsIrakasleakTaldeak" runat="server" ConnectionString="<%$ ConnectionStrings:sgta2022-probaConnectionString %>" SelectCommand="SELECT KlasekoTaldeak.irakasgaiKodea FROM (KlasekoTaldeak INNER JOIN IrakasleakTaldeak ON KlasekoTaldeak.kodea = IrakasleakTaldeak.taldeKodea) WHERE (IrakasleakTaldeak.email = @email)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="email" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sqldsLanGenerikoak" runat="server" ConnectionString="<%$ ConnectionStrings:sgta2022-probaConnectionString %>" SelectCommand="SELECT * FROM [LanGenerikoak] WHERE ([irakasgaiKodea] = @irakasgaiKodea)" UpdateCommand="UPDATE LanGenerikoak SET deskribapena = @deskribapena, irakasgaiKodea = @irakasgaiKodea, aurreikusitakoOrduak = @aurreikusitakoOrduak, ustiapenean = @ustiapenean, lanMota = @lanMota WHERE (kodea = @kodea)" DeleteCommand="DELETE FROM LanGenerikoak WHERE (kodea = @kodea)" InsertCommand="INSERT INTO LanGenerikoak(kodea, deskribapena, irakasgaiKodea, aurreikusitakoOrduak, ustiapenean, lanMota) VALUES (@kodea, @deskribapena, @irakasgaiKodea, @aurreikusitakoOrduak, @ustiapenean, @lanMota)">
                <DeleteParameters>
                    <asp:Parameter Name="kodea" Type="String"/>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="kodea" Type="String"/>
                    <asp:Parameter Name="deskribapena" Type="String"/>
                    <asp:Parameter Name="irakasgaiKodea" Type="String"/>
                    <asp:Parameter Name="aurreikusitakoOrduak" Type="Int64"/>
                    <asp:Parameter Name="ustiapenean" Type="Boolean"/>
                    <asp:Parameter Name="lanMota" Type="String"/>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownIrakasgaiak" Name="irakasgaiKodea" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="deskribapena" Type="String"/>
                    <asp:Parameter Name="irakasgaiKodea" Type="String"/>
                    <asp:Parameter Name="aurreikusitakoOrduak" Type="Int64"/>
                    <asp:Parameter Name="ustiapenean" Type="Boolean"/>
                    <asp:Parameter Name="lanMota" Type="String"/>
                    <asp:Parameter Name="kodea" Type="String"/>
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        <b>Irakasgaia hautatu:</b><br /><br />
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell Width="150">
                        <asp:DropDownList ID="DropDownIrakasgaiak" runat="server" DataSourceID="sqldsIrakasleakTaldeak" DataTextField="irakasgaiKodea" AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnIkusiLanak" runat="server" Text="Lan berria gehitu" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        <br />
            <asp:GridView ID="GridLanak" runat="server" AutoGenerateColumns="False" DataSourceID="sqldsLanGenerikoak" DataKeyName="kodea" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" Width="972px" DataKeyNames="Kodea">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField HeaderText="Kodea" DataField="kodea" SortExpression="kodea" ReadOnly="True" />
                    <asp:BoundField HeaderText="Deskribapena" DataField="deskribapena" SortExpression="deskribapena"/>
                    <asp:BoundField HeaderText="Irakasgai-kodea" DataField="irakasgaiKodea" SortExpression="irakasgaiKodea" />
                    <asp:BoundField HeaderText="Aurreikusitako orduak" DataField="aurreikusitakoOrduak" SortExpression="aurreikusitakoOrduak"/>
                    <asp:CheckBoxField HeaderText="Ustiapenean" DataField="ustiapenean" SortExpression="ustiapenean"/>
                    <asp:BoundField HeaderText="Lan mota" DataField="lanMota" SortExpression="lanMota"/>
                </Columns>
                <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:HyperLink id="bukatuSaioa" NavigateUrl="../../Amaiera.aspx" runat="server">Bukatu saioa</asp:HyperLink>
        </div>
    </form>
</body>
</html>

