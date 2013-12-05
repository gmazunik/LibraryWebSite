Partial Class library
    Inherits System.Web.UI.MasterPage

    Protected Sub lbl_copy_Load(sender As Object, e As EventArgs) Handles lbl_copy.Load

        lbl_date.Text = DateTime.Now.ToLongDateString
        lbl_copy.Text = DateTime.Now.Year

    End Sub
End Class

