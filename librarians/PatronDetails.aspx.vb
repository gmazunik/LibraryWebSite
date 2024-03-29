﻿Imports System.Data.SqlClient
Imports System.Web.Security
Imports System.Web.Security.Roles
Imports System.Web.Security.Membership
Imports System.Data

Partial Class librarians_CustomerDetails
    Inherits System.Web.UI.Page

    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim selUser As Label = CType(FormView1.FindControl("lbl_UserName"), Label)
        'librarians_PatronDetails
        If selUser IsNot Nothing Then

            Dim delUser As String = selUser.Text

            Membership.DeleteUser(delUser)

        End If

    End Sub

    Protected Sub FormView1_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim delPatron As String = e.Values("FirstName").ToString()

        lbl_DeletedUser.Text = "The record " & delPatron & " has been deleted."

        Response.AddHeader("REFRESH", "3;URL=ViewAllPatrons.aspx")

    End Sub

    Protected Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.Redirect("ViewAllPatrons.aspx")

    End Sub


End Class
