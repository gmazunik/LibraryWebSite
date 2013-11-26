
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

    Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting

    End Sub
End Class
