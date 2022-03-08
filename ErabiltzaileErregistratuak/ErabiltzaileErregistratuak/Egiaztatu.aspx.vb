Public Class Egiaztatu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim email = Request.QueryString("erab")
        Dim zenb = Request.QueryString("egZenb")
        DatuAtzipenekoak.DatuAtzipena.Konektatu()
        Dim erabiltzailea = DatuAtzipenekoak.DatuAtzipena.ErabiltzaileaLortu(email)
        erabiltzailea.Read()
        If erabiltzailea.Item("email") = email And erabiltzailea.Item("egiaztatzeZenbakia") = zenb Then
            DatuAtzipenekoak.DatuAtzipena.ErabiltzaileaEgiaztatu(email)
        End If
        DatuAtzipenekoak.DatuAtzipena.ItxiKonexioa()
        Response.Redirect("LogIn.aspx")
    End Sub

End Class