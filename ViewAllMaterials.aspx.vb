
Partial Class librarians_allmaterials
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim RetrievedValue As String
        RetrievedValue = Convert.ToString(Request.QueryString("val"))

        Dim searchword As String

        searchword = " Select * From SLPL_Materials where ( Title Like '%" + RetrievedValue + "%')"
        SqlDataSource1.SelectCommand = searchword

    End Sub
End Class
