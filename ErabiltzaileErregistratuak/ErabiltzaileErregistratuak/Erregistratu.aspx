<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Erregistratu.aspx.vb" Inherits="ErabiltzaileErregistratuak.WebForm4" %>

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
                <b><h3>ERREGISTRATU</h3>
                </b>
                <br />
            <asp:Table ID="Taula" runat="server" CellPadding="10" BorderWidth="1" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>
                        Email:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Izena:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtIzena" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Abizena:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtAbizena" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                        Galdera ezkutua:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtGaldera" runat="server"></asp:TextBox>
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
                        NA:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtNA" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Lantalde kodea:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtLantalde" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Azpitalde kodea:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtAzpitalde" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
               <asp:TableRow>
                    <asp:TableCell>
                        Erabiltzaile mota:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="RBMota" runat="server">
                            <asp:ListItem Value="irak">Irakaslea</asp:ListItem>
                            <asp:ListItem Value="ik">Ikaslea</asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                        Pasahitza:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtPasahitza" type="password" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                        Errepikatu pasahitza:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtPasahitza2" type="password" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                         <asp:Button ID="btnItzuli" runat="server" Text="Hasiera itzuli" />
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:Button ID="btnErregistratu" runat="server" Text="Erregistratu" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
                <br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
        </center>
        </div>
    </form>
</body>
</html>
