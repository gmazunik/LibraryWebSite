
Partial Class librarians_ViewAllPatrons
    Inherits System.Web.UI.Page

    Protected Sub btn_search_Click(sender As Object, e As EventArgs) Handles btn_search.Click

        Dim searchword As String

        searchword = " Select * From SLPL_UserProfile where ( FirstName Like '%" + tb_search.Text + "%') OR ( LastName Like '%" + tb_search.Text + "%') OR (PhoneNumber Like '%" + tb_search.Text + "%') OR (PhoneNumber1 Like '%" + tb_search.Text + "%') OR ( PrimaryEmail Like '%" + tb_search.Text + "%')"
        SqlDataSource1.SelectCommand = searchword

    End Sub
End Class
