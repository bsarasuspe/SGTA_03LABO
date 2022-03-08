<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PasahitzaAldatu.aspx.vb" Inherits="ErabiltzaileErregistratuak.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><center>
            <h3>PASAHITZA ALDATU</h3>
            <asp:Table ID="Taula" runat="server" CellPadding="10" BorderWidth="1" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>
                        Oraingo pasahitza:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtOraingoPasahitza" type="password" runat="server"></asp:TextBox><br />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Pasahitza berria:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtPasahitzaBerria" type="password" runat="server"></asp:TextBox><br />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Errepikatu pasahitza:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtErrepikatuPasahitza" type="password" runat="server"></asp:TextBox><br />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="btnItzuli" runat="server" Text="Itzuli menura" />
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:Button ID="btnAldatu" runat="server" Text="Aldatu pasahitza" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            
        </center></div>
    </form>
</body>
</html>
