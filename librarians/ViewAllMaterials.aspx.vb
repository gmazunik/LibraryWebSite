
Partial Class librarians_allmaterials
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim RetrievedValue As String
        RetrievedValue = Convert.ToString(Request.QueryString("val"))

        Dim searchword As String

        searchword = " Select * From SLPL_Materials where ( Title Like '%" + RetrievedValue + "%')  OR ( Author Like '%" + RetrievedValue + "%')"
        SqlDataSource1.SelectCommand = searchword

    End Sub

    Protected Sub btn_search_Click(sender As Object, e As EventArgs) Handles btn_search.Click

        Dim searchword As String

        searchword = " Select * From SLPL_Materials where ( MatID Like '%" + tb_search.Text + "%') OR ( Title Like '%" + tb_search.Text + "%') OR ( Author Like '%" + tb_search.Text + "%') OR ( ISBN Like '%" + tb_search.Text + "%') "
        SqlDataSource1.SelectCommand = searchword

    End Sub
End Class
