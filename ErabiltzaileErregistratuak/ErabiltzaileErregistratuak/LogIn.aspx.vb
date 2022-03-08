Imports System.Data.SqlClient

Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Response.Redirect("Erregistratu.aspx")
    End Sub

    Protected Sub btnRecover_Click(sender As Object, e As EventArgs) Handles btnRecover.Click
        Response.Redirect("PasahitzaBerreskuratu.aspx")
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        If (Not String.IsNullOrEmpty(txtEmail.Text)) Then
            If (Not String.IsNullOrEmpty(txtPass.Text)) Then
                DatuAtzipenekoak.DatuAtzipena.Konektatu()
                Dim erabiltzailea = DatuAtzipenekoak.DatuAtzipena.ErabiltzaileaLortu(txtEmail.Text)
                If erabiltzailea.Read() Then
                    If erabiltzailea.Item("email") = txtEmail.Text Then
                        If erabiltzailea.Item("pasahitza") = txtPass.Text Then
                            If erabiltzailea.Item("egiaztatua") = "1" Then
                                Session("email") = txtEmail.Text
                                lblMezua.Text = "Ongi logeatu zara!"
                                If erabiltzailea.Item("erabiltzaileMota").Equals("irak") Then
                                    Response.Redirect("Erreg/Irakasleak/Irakasleak.aspx")
                                Else
                                    Response.Redirect("Erreg/Ikasleak/Ikasleak.aspx")
                                End If
                                DatuAtzipenekoak.DatuAtzipena.ItxiKonexioa()
                            Else
                                lblMezua.Text = "Erabiltzailea ez dago egiaztatuta."
                                DatuAtzipenekoak.DatuAtzipena.ItxiKonexioa()
                            End If
                        Else
                            lblMezua.Text = "Pasahitza ez da egokia."
                            DatuAtzipenekoak.DatuAtzipena.ItxiKonexioa()
                        End If
                    End If
                Else
                    lblMezua.Text = "Ez dago erabiltzailerik email horrekin."
                End If
            Else
                lblMezua.Text = "Pasahitzak ezin du hutsik egon."
            End If
        Else
            lblMezua.Text = "Emailak ezin du hutsik egon."
        End If
    End Sub
End Class