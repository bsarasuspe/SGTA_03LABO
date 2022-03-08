Imports System.Data.SqlClient

Public Class LanaInstantziatu
    Inherits System.Web.UI.Page

    Dim dvIkasleLanak As DataView
    Dim sqlIkasleLanak As SqlDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtEmail.Text = Session("email")
        txtLanGenerikoa.Text = Request.QueryString("lanKodea")

        sqlIkasleLanak = DatuAtzipenekoak.DatuAtzipena.IkasleLanenEgokitzaileaEskuratu(Session("email"))
        Session("sqlIkasleLanak") = sqlIkasleLanak
        Dim dsIkasleLanak As New DataSet()
        sqlIkasleLanak.Fill(dsIkasleLanak, "IkasleLanak")
        Session("dsIkasleLanak") = dsIkasleLanak
    End Sub

    Protected Sub btnLanaSortu_Click(sender As Object, e As EventArgs) Handles btnLanaSortu.Click
        dvIkasleLanak = New DataView(Session("dsIkasleLanak").Tables("IkasleLanak"))
        dvIkasleLanak.RowFilter = "lanGenerikoarenKodea='" & Request.QueryString("lanKodea") & "'"
        If dvIkasleLanak.Count = 0 Then
            Dim txtAurreikusitakoOrduakInt As Integer
            If Integer.TryParse(txtAurreikusitakoOrduak.Text, txtAurreikusitakoOrduakInt) Then
                Dim txtBenetakoOrduakInt As Integer
                If Integer.TryParse(txtBenetakoOrduak.Text, txtBenetakoOrduakInt) Then
                    lblError.Text = " "
                    Dim Row As DataRow = Session("dsIkasleLanak").Tables("IkasleLanak").NewRow()
                    Row("email") = txtEmail.Text
                    Row("lanGenerikoarenKodea") = txtLanGenerikoa.Text
                    Row("aurreikusitakoOrduak") = txtAurreikusitakoOrduak.Text
                    Row("benetakoOrduak") = txtBenetakoOrduak.Text
                    Session("dsIkasleLanak").Tables("IkasleLanak").Rows.Add(Row)
                    Dim CommandBuilder As New SqlCommandBuilder(sqlIkasleLanak)
                    CommandBuilder.GetInsertCommand()
                    sqlIkasleLanak.Update(Session("dsIkasleLanak").Tables("IkasleLanak"))
                    Session("dsIkasleLanak").AcceptChanges()
                    lblError.Text = "Lana ongi instantziatu da!"
                Else
                    lblError.Text = "Benetako orduak integer bat izan behar du."
                End If
            Else
                lblError.Text = "Aurreikusitako orduak integer bat izan behar du."
            End If
        Else
            lblError.Text = "Lan hau instantziatuta dago."
        End If

    End Sub
End Class