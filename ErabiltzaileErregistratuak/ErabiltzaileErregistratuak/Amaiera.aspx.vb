Public Class Amaiera
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Abandon()
    End Sub

    Protected Sub btnHasiera_Click(sender As Object, e As EventArgs) Handles btnHasiera.Click
        Response.Redirect("Hasiera.aspx")
    End Sub
End Class