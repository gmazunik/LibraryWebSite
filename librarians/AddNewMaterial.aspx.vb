
Partial Class librarians_AddNewMaterial
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted

        Response.Redirect("../ViewAllMaterials.aspx")

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim fileupload As FileUpload = CType(FormView1.FindControl("FileUploadControl"), FileUpload)

        Dim photoname As TextBox = CType(FormView1.FindControl("tb_PhotoName"), TextBox)

        photoname.Text = fileupload.FileName
    End Sub
End Class
