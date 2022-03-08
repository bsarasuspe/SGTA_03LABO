<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hasiera.aspx.vb" Inherits="ErabiltzaileErregistratuak.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <b><h3>WEB APLIKAZIOA</h3></b>
            <br />
            <asp:Table ID="Taula" runat="server" CellPadding="10" BorderWidth="1" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="btnRegister" runat="server" Text="Erregistratu" />
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:Button ID="btnLogin" runat="server" Text="Logeatu" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
          </center>
        </div>
    </form>
</body>
</html>
