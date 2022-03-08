Public Class IrakasleLanak
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownIrakasgaiak_OnSelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnIkusiLanak_Click(sender As Object, e As EventArgs) Handles btnIkusiLanak.Click
        Response.Redirect("LanGenerikoaGehitu.aspx")
    End Sub

    Protected Sub GridLanak_RowEditing(sender As Object, e As GridViewEditEventArgs) Handles GridLanak.RowEditing

    End Sub

    Protected Sub GridLanak_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridLanak.RowDeleting

    End Sub
End Class