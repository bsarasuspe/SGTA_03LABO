Imports System.Data.SqlClient

Public Class IkasleLanGenerikoak
    Inherits System.Web.UI.Page

    Dim dvIrakasgaiak As DataView
    Dim sqlData1 As SqlDataAdapter
    Dim email As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Konexioa egin
        DatuAtzipenekoak.DatuAtzipena.Konektatu()

        If Not Page.IsPostBack Then
            'DropDown-erako datuak eskuratu
            email = Session("email")
            sqlData1 = DatuAtzipenekoak.DatuAtzipena.IkasleaMatrikulatutakoIrakasgaienEgokitzaileaEskuratu(email)
            Dim irakasgaiakDS As New DataSet()
            Try
                sqlData1.Fill(irakasgaiakDS, "Irakasgaiak")
                Session("dsIrakasgaiak") = irakasgaiakDS
            Catch ex As Exception

            End Try
            DropDownIrakasgaiak.DataSource = irakasgaiakDS.Tables("Irakasgaiak")
            DropDownIrakasgaiak.DataTextField = "irakasgaiKodea"
            DropDownIrakasgaiak.DataBind()

            'LanGenerikoak eskuratu
            Dim sqlData2 As SqlDataAdapter = DatuAtzipenekoak.DatuAtzipena.UstiapenekoLanGenerikoenEgokitzaileaEskuratu()
            Dim langenerikoakDS As New DataSet()
            sqlData2.Fill(langenerikoakDS, "lanGenerikoak")
            Session("dsLanGenerikoak") = langenerikoakDS
        End If

        'Konexioa itxi
        DatuAtzipenekoak.DatuAtzipena.ItxiKonexioa()

    End Sub

    Protected Sub btnIkusiLanak_Click(sender As Object, e As EventArgs) Handles btnIkusiLanak.Click

        'DataView sortu Grid-erako
        dvIrakasgaiak = New DataView(Session("dsLanGenerikoak").Tables("lanGenerikoak"))
        dvIrakasgaiak.RowFilter = "irakasgaiKodea='" & DropDownIrakasgaiak.SelectedValue() & "'"

        'Zutabeak erakutsi/ezkutatu
        If CheckBoxLanak.Items(1).Selected Then
            gridIrakasgaiak.Columns(2).Visible = True
        Else
            gridIrakasgaiak.Columns(2).Visible = False
        End If
        If CheckBoxLanak.Items(2).Selected Then
            gridIrakasgaiak.Columns(3).Visible = True
        Else
            gridIrakasgaiak.Columns(3).Visible = False
        End If
        If CheckBoxLanak.Items(3).Selected Then
            gridIrakasgaiak.Columns(4).Visible = True
        Else
            gridIrakasgaiak.Columns(4).Visible = False
        End If

        'Grid-ean datuak erakutsi
        gridIrakasgaiak.DataSource = dvIrakasgaiak
        gridIrakasgaiak.DataBind()

        'DataView Session-ean gordea
        Session("dvIrakasgaiak") = dvIrakasgaiak

    End Sub

    Protected Sub gridIrakasgaiak_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gridIrakasgaiak.SelectedIndexChanged

        'LanaInstantziatu-ra joan
        Response.Redirect("LanaInstantziatu.aspx?lanKodea=" & gridIrakasgaiak.SelectedDataKey.Value)

    End Sub

    Protected Sub gridIrakasgaiak_Sorting(sender As Object, e As GridViewSortEventArgs)

        'Sorting egin
        Session("dvIrakasgaiak").Sort = e.SortExpression
        gridIrakasgaiak.DataSource = Session("dvIrakasgaiak")
        gridIrakasgaiak.DataBind()

    End Sub
End Class