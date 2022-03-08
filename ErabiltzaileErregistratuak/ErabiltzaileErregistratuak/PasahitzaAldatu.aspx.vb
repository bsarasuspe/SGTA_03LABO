Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub btnAldatu_Click(sender As Object, e As EventArgs) Handles btnAldatu.Click
        Dim email = Session("email")
        If (Not String.IsNullOrEmpty(txtOraingoPasahitza.Text)) Then
            If (Not String.IsNullOrEmpty(txtPasahitzaBerria.Text)) Then
                If (Not String.IsNullOrEmpty(txtErrepikatuPasahitza.Text)) Then
                    If (txtPasahitzaBerria.Text.Equals(txtErrepikatuPasahitza.Text)) Then
                        DatuAtzipenekoak.DatuAtzipena.Konektatu()
                        Dim erabiltzailea = DatuAtzipenekoak.DatuAtzipena.ErabiltzaileaLortu(email)
                        erabiltzailea.Read()
                        If (erabiltzailea.Item("pasahitza").Equals(txtOraingoPasahitza.Text)) Then
                            DatuAtzipenekoak.DatuAtzipena.ErabiltzailearenPasahitzaAldatu(email, txtPasahitzaBerria.Text)
                            DatuAtzipenekoak.DatuAtzipena.ItxiKonexioa()
                            lblMessage.Text = "Pasahitza ongi aldatu da."
                            Response.Redirect("Login.aspx")
                        Else
                            lblMessage.Text = "Oraingo pasahitza ez da zuzena."
                        End If
                    Else
                        lblMessage.Text = "Bi pasahitzak ez dira berdinak."
                    End If
                Else
                    lblMessage.Text = "Errepikatu pasahitza."
                End If
            Else
                lblMessage.Text = "Pasahitza berriak ezin du hutsik egon."
            End If
        Else
            lblMessage.Text = "Oraingo pasahitzak ezin du hutsik egon."
        End If
    End Sub

    Protected Sub btnItzuli_Click(sender As Object, e As EventArgs) Handles btnItzuli.Click
        Response.Redirect("ErregMenua.aspx")
    End Sub
End Class