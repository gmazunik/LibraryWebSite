Partial Class library
    Inherits System.Web.UI.MasterPage

    Protected Sub lbl_copy_Load(sender As Object, e As EventArgs) Handles lbl_copy.Load

        lbl_date.Text = DateTime.Now.ToLongDateString
        lbl_copy.Text = DateTime.Now.Year

    End Sub

    Protected Sub btn_search_Click(sender As Object, e As EventArgs) Handles btn_search.Click

        Dim strtext As String = tb_search.Text
        Dim url As String

        url = "~/ViewAllMaterials.aspx?val=" + strtext

        Response.Redirect(url)

    End Sub
End Class

