
Partial Class librarians_AddNewMaterial
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted

        Response.Redirect("../ViewAllMaterials.aspx")

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

        Dim filepath As String = Server.MapPath("~\Materials")

        Dim fileupload As FileUpload = CType(FormView1.FindControl("FileUploadControl"), FileUpload)

        Dim PhotoName As TextBox = CType(FormView1.FindControl("tb_PhotoName"), TextBox)

        Dim ISBN As TextBox = CType(FormView1.FindControl("tb_ISBN"), TextBox)

        PhotoName.Text = ISBN.Text & ".jpg"

        If fileupload.HasFile Then
            Try
                fileupload.SaveAs(filepath & "\" & ISBN.Text & ".jpg")
            Catch ex As Exception
            End Try
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim callNumber As TextBox = CType(FormView1.FindControl("tb_CallNumber"), TextBox)
        callNumber.Focus()

    End Sub
End Class
