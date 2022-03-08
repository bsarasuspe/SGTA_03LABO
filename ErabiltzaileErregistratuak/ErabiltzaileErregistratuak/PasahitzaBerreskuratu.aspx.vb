Imports System.Data.SqlClient

Public Class WebForm3
    Inherits System.Web.UI.Page

    Dim erabiltzailea As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnBerreskuratu_Click(sender As Object, e As EventArgs) Handles btnBerreskuratu.Click
        DatuAtzipenekoak.DatuAtzipena.Konektatu()
        erabiltzailea = DatuAtzipenekoak.DatuAtzipena.ErabiltzaileaLortu(txtEmail.Text)
        If erabiltzailea.Read() Then
            txtGaldera.Text = erabiltzailea.Item("galderaEzkutua")
        Else
            lblMessage.Text = "Ez dago erabiltzailerik email horrekin."
        End If

    End Sub

    Protected Sub btnErakutsiPasahitza_Click(sender As Object, e As EventArgs) Handles btnErakutsiPasahitza.Click
        erabiltzailea = DatuAtzipenekoak.DatuAtzipena.ErabiltzaileaLortu(txtEmail.Text)
        erabiltzailea.Read()
        If erabiltzailea.Item("erantzuna") = txtErantzuna.Text Then
            txtPasahitza.Text = erabiltzailea.Item("pasahitza")
            lblMessage2.Text = " "
        Else
            lblMessage2.Text = "Erantzuna ez da zuzena."
        End If


    End Sub

    Protected Sub btnItzuli_Click(sender As Object, e As EventArgs) Handles btnItzuli.Click
        Response.Redirect("LogIn.aspx")
    End Sub
End Class