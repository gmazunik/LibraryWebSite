
Partial Class librarians_MaterialsDue
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim MaterialsDue As String
        MaterialsDue = "SELECT * FROM SLPL_Rentals WHERE DateDue <= CONVERT(datetime,CONVERT(varchar(10),GetDate(),112))"
        SqlDataSource1.SelectCommand = MaterialsDue

    End Sub

End Class
