<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LanaInstantziatu.aspx.vb" Inherits="ErabiltzaileErregistratuak.LanaInstantziatu" %>

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
                    <h2>IKASLEA<br/>LAN GENERIKOA INSTANTZIATU</h2>
                </center>
            </div>
            <asp:SqlDataSource ID="sqldsIkasleakLanak" runat="server" ConnectionString="<%$ ConnectionStrings:sgta2022-probaConnectionString %>" SelectCommand="SELECT * FROM [IkasleakLanak] WHERE ([email] = @email)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="email" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        <b>Hautatu irakasgaia (matrikulatutakoak baino ez dira ateratzen):</b><br /><br />
            
        <b>Erabiltzailea:</b>&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" ReadOnly="true"></asp:TextBox><br /><br />
        <b>Lan generikoa:</b>&nbsp;
        <asp:TextBox ID="txtLanGenerikoa" runat="server" ReadOnly="true"></asp:TextBox><br /><br />
        <b>Aurreikustako orduak:</b>&nbsp;
        <asp:TextBox ID="txtAurreikusitakoOrduak" runat="server"></asp:TextBox><br /><br />
        <b>Benetako orduak:</b>&nbsp;
        <asp:TextBox ID="txtBenetakoOrduak" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="btnLanaSortu" runat="server" Text="Lana sortu" />

            &nbsp;
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br /><br />

            <asp:GridView ID="gridIkasleakLanak" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="sqldsIkasleakLanak" AutoGenerateColumns="False" DataKeyNames="email,lanGenerikoarenKodea" Width="556px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="lanGenerikoarenKodea" HeaderText="Lanaren kodea" ReadOnly="True" SortExpression="lanGenerikoarenKodea" />
                    <asp:BoundField DataField="aurreikusitakoOrduak" HeaderText="Aurreikusitako orduak" SortExpression="aurreikusitakoOrduak" />
                    <asp:BoundField DataField="benetakoOrduak" HeaderText="Benetako orduak" SortExpression="benetakoOrduak" />
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
            <asp:HyperLink id="hyperlink1" NavigateUrl="IkasleLanGenerikoak.aspx" runat="server">Atzera</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
