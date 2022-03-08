<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LogIn.aspx.vb" Inherits="ErabiltzaileErregistratuak.WebForm2" %>

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
                <b>
                <h3>LOGIN</h3>
                </b><br />
        

        <asp:Table ID="Taula" runat="server" CellPadding="10" BorderWidth="1" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>
                        Emaila:
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Pasahitza:
                    </asp:TableCell>

                    <asp:TableCell>
                         <asp:TextBox ID="txtPass" type="password" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
  
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnLogin" runat="server" Text="Logeatu" />
                         
                    </asp:TableCell>
                </asp:TableRow>
        </asp:Table>
            
                <br />
            <asp:Label ID="lblMezua" runat="server"></asp:Label>
                <br />
            <br />
            <asp:Button ID="btnRecover" runat="server" Text="Berreskuratu pasahitza" />
            &nbsp;&nbsp;
            <asp:Button ID="btnRegister" runat="server" Text="Erregistratu" />
                <br />
                <br />
            </center>
        </div>
    </form>
</body>
</html>

