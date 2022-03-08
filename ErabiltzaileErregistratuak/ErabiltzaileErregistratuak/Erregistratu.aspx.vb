Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnErregistratu.Click
        If (Not String.IsNullOrEmpty(txtEmail.Text)) Then
            If (Not String.IsNullOrEmpty(txtIzena.Text)) Then
                If (Not String.IsNullOrEmpty(txtAbizena.Text)) Then
                    If (Not String.IsNullOrEmpty(txtNA.Text)) Then
                        If (Not String.IsNullOrEmpty(txtLantalde.Text)) Then
                            If (Not String.IsNullOrEmpty(txtAzpitalde.Text)) Then
                                If (Not String.IsNullOrEmpty(txtGaldera.Text)) Then
                                    If (Not String.IsNullOrEmpty(txtErantzuna.Text)) Then
                                        If (Not String.IsNullOrEmpty(txtPasahitza.Text)) Then
                                            If (Not String.IsNullOrEmpty(txtPasahitza2.Text)) Then
                                                If (txtPasahitza.Text.Equals(txtPasahitza2.Text)) Then
                                                    Dim erEmail = New Regex("^[a-zA-Z0-9]+@(ikasle\.|)ehu\.(eus|es)$")
                                                    If erEmail.Match(txtEmail.Text).Success Then
                                                        lblError.Text = "Datuak egokiak."
                                                        Randomize()
                                                        Dim egiaztatzeZenbakia = CLng(Rnd() * 9000000) + 1000000
                                                        DatuAtzipenekoak.DatuAtzipena.Konektatu()
                                                        DatuAtzipenekoak.DatuAtzipena.ErabiltzaileaTxertatu(txtEmail.Text, txtIzena.Text, txtAbizena.Text, txtGaldera.Text, txtErantzuna.Text, txtNA.Text, egiaztatzeZenbakia, 0, txtLantalde.Text, txtAzpitalde.Text, RBMota.SelectedValue, txtPasahitza.Text)
                                                        DatuAtzipenekoak.DatuAtzipena.ItxiKonexioa()
                                                        Dim portua As Integer = Request.ServerVariables("server_port")
                                                        Dim esteka As String = "Egiaztatu.aspx?erab=" & txtEmail.Text & "&egZenb=" & egiaztatzeZenbakia
                                                        lblError.Text = "Ongi erregistratu zara!"
                                                        Response.Redirect(esteka)
                                                    Else
                                                        lblError.Text = "Eposta ez da zuzena."
                                                    End If
                                                Else
                                                    lblError.Text = "Pasahitzak ez dira berdinak."
                                                End If
                                            Else
                                                lblError.Text = "Pasahitza errepikatu behar duzu."
                                            End If
                                        Else
                                            lblError.Text = "Pasahitzak ezin du hutsa egon."
                                        End If
                                    Else
                                        lblError.Text = "Erantzunak ezin du hutsa egon."
                                    End If
                                Else
                                    lblError.Text = "Galderak ezin du hutsa egon."
                                End If
                            Else
                                lblError.Text = "Azpitalde kodeak ezin du hutsa egon."
                            End If
                        Else
                            lblError.Text = "Lantalde kodeak ezin du hutsa egon."
                        End If
                    Else
                        lblError.Text = "NAk ezin du hutsa egon."
                    End If
                Else
                    lblError.Text = "Abizenak ezin du hutsa egon."
                End If
            Else
                lblError.Text = "Izenak ezin du hutsa egon."
            End If
        Else
            lblError.Text = "Emailak ezin du hutsa egon."
        End If
    End Sub

    Protected Sub btnItzuli_Click(sender As Object, e As EventArgs) Handles btnItzuli.Click
        Response.Redirect("Hasiera.aspx")
    End Sub
End Class