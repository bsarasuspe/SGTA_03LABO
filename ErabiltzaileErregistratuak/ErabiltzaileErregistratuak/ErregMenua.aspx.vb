Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnPasAldatu_Click(sender As Object, e As EventArgs) Handles btnPasAldatu.Click
        Response.Redirect("PasahitzaAldatu.aspx")
    End Sub

    Protected Sub btnAmaiera_Click(sender As Object, e As EventArgs) Handles btnAmaiera.Click
        Response.Redirect("Amaiera.aspx")
    End Sub
End Class