<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Ikasleak.aspx.vb" Inherits="ErabiltzaileErregistratuak.Ikasleak" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:auto;width:1100px">
            <asp:Panel runat="server" style="background:#97bee6;float:left;margin:15px;padding:10px;border-radius:3px;border: 3px solid #7596b8;" Width="230px" height="500px">
                <div style="padding-left:20px;">
                    <asp:HyperLink id="hyperlink1" NavigateUrl="IkasleLanGenerikoak.aspx" runat="server"><h2>Lan generikoak</h2></asp:HyperLink>
                    <h2>Lan pertsonalak</h2>
                    <h2>Taldeak</h2>
                    <asp:HyperLink id="hyperlink2" NavigateUrl="../../PasahitzaAldatu.aspx" runat="server"><h2>Pasahitza Aldatu</h2></asp:HyperLink>
                </div>  
            </asp:Panel>
            <asp:Panel runat="server" style="background:#d4d4d4;float:left;margin:15px;padding:10px;border-radius:3px;border: 3px solid #b6b6b6;" Width="720px" Height="500px">
                <center><h1>LANEN KUDEAKETA</h1>
                    <h2>IKASLEAK</h2>
                </center>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
