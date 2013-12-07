
Partial Class librarians_allmaterials
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim RetrievedValue As String
        RetrievedValue = Convert.ToString(Request.QueryString("val"))

        Dim searchword As String

        searchword = " Select * From SLPL_Materials where ( Title Like '%" + RetrievedValue + "%')"
        SqlDataSource1.SelectCommand = searchword

    End Sub
    
    Protected Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then

            If e.Row.Cells(7).Text = "No" Then
                e.Row.Cells(7).Text = ""
            End If

            If e.Row.Cells(7).Text = "Damaged" Then
                e.Row.Cells(7).Text = ""
            End If

        End If

    End Sub
End Class
