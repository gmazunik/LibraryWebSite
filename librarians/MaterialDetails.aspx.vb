
Partial Class librarians_MaterialDetails
    Inherits System.Web.UI.Page



    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedMaterial As String = e.Values("Title").ToString()

        lbl_DeletedMaterial.Text = "The record <span class=deletedrecordhighlight> " & deletedMaterial & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3; URL=ViewAllMaterials.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.Redirect("ViewAllMaterials.aspx")

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

        Dim fileupload As FileUpload = CType(FormView1.FindControl("FileUploadControl"), FileUpload)

        Dim photoname As TextBox = CType(FormView1.FindControl("tb_PhotoName"), TextBox)

        photoname.Text = fileupload.FileName
    End Sub
End Class
