<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PasahitzaBerreskuratu.aspx.vb" Inherits="ErabiltzaileErregistratuak.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <center><b>
               <br />
               PASAHITZA BERRESKURATU</b><br />
            <br />
        <asp:Table ID="Taula" runat="server" CellPadding="10" BorderWidth="1" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>
                        E-mail:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:Button ID="btnBerreskuratu" runat="server" Text="Berreskuratu" />
                    </asp:TableCell>
                </asp:TableRow>
        </asp:Table>
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <br />
            <b>GALDERA EZKUTUA</b>
            <br />
            <br />
            <asp:Table ID="Taula2" runat="server" CellPadding="10" BorderWidth="1" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>
                        Galdera:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtGaldera" runat="server" Enabled="False"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Erantzuna:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtErantzuna" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>

                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:Button ID="btnErakutsiPasahitza" runat="server" Text="Erakutsi pasahitza" />
                    </asp:TableCell>
                </asp:TableRow>
        </asp:Table>
            
            <br />

            <asp:Label ID="lblMessage2" runat="server"></asp:Label>

            <br />
            <br />
            <asp:Table ID="Taula3" runat="server" CellPadding="10" BorderWidth="1" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>
                        Pasahitza:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtPasahitza" runat="server" Enabled="False"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
        </asp:Table>
               <br />
               <asp:Button ID="btnItzuli" runat="server" Text="Itzuli login-era" />
        </center>
        </div>

    </form>
</body>
</html>
