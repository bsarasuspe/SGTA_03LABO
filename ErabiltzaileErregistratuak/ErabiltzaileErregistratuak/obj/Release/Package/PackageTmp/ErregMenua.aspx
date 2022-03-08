<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ErregMenua.aspx.vb" Inherits="ErabiltzaileErregistratuak.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h3>MENUA</h3>
                    <asp:Table ID="Taula" runat="server" CellPadding="10" BorderWidth="1" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="btnPasAldatu" runat="server" Text="Pasahitza aldatu" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnAmaiera" runat="server" Text="Amaiera" /> 
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
                <br />
        </center></div>
    </form>
</body>
</html>

