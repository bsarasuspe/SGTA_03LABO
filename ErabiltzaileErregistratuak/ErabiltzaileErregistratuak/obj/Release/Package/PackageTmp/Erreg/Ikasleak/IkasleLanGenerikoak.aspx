<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IkasleLanGenerikoak.aspx.vb" Inherits="ErabiltzaileErregistratuak.IkasleLanGenerikoak" %>

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
                    <h2>IKASLEA<br/>LAN GENERIKOEN KUDEAKETA</h2>
                </center>
            </div>
            <br />
        <b>Hautatu irakasgaia (matrikulatutakoak baino ez dira ateratzen):</b><br />
            
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell Width="200">
                        <asp:DropDownList ID="DropDownIrakasgaiak" runat="server">
                        </asp:DropDownList><br /><br />
                        <asp:Button ID="btnIkusiLanak" runat="server" Text="Ikusi lanak" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBoxList ID="CheckBoxLanak" runat="server">
                            <asp:ListItem Enabled="False" Selected="True">Kodea</asp:ListItem>
                            <asp:ListItem Value="Deskribapena">Deskribapena</asp:ListItem>
                            <asp:ListItem Value="Aurreikusitako orduak">Aurreikusitako orduak</asp:ListItem>
                            <asp:ListItem Value="Lan mota">Lan mota</asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        <br />
            <asp:GridView ID="gridIrakasgaiak" runat="server" Width="707px" GridLines="None" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" DataKeyNames="Kodea" AllowSorting="True" OnSorting="gridIrakasgaiak_Sorting">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField SelectText="Instantziatu" ShowSelectButton="True"/>
                    <asp:BoundField HeaderText="Kodea" DataField="irakasgaiKodea" SortExpression="irakasgaiKodea ASC"/>
                    <asp:BoundField HeaderText="Deskribapena" DataField="deskribapena" SortExpression="deskribapena ASC"/>
                    <asp:BoundField HeaderText="Aurreikustako orduak" DataField="aurreikusitakoOrduak" SortExpression="aurreikusitakoOrduak ASC"/>
                    <asp:BoundField HeaderText="Lan mota" DataField="lanMota" SortExpression="lanMota ASC"/>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
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
            <asp:HyperLink id="hyperlink1" NavigateUrl="Ikasleak.aspx" runat="server">Atzera</asp:HyperLink>
            </div>
    </form>
</body>
</html>
