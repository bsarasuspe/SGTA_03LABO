<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LanGenerikoaGehitu.aspx.vb" Inherits="ErabiltzaileErregistratuak.LanGenerikoaGehitu" %>

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
            <br /><br />
            <b>Kodea:</b>&nbsp;
                        <asp:TextBox ID="txtErabiltzailea" runat="server"></asp:TextBox><br /><br />
                        <b>Deskribapena:</b>&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
                        <b>Irakasgaia:</b>&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
                        <b>Aurreikusitako orduak:</b>&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
                        <b>Lan mota:</b>&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
                        <asp:Button ID="btnIkusiLanak" runat="server" Text="Gehitu lana" />
            <br />
            
            <br />
            Ikusi lanak<br />
        </div>
    </form>
</body>
</html>
