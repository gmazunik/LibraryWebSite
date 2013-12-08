Imports System.Data.SqlClient
Imports System.Web.Security
Imports System.Web.Security.Roles
Imports System.Web.Security.Membership
Imports System.Data

Partial Class patrons_PatronProfile
	Inherits System.Web.UI.Page

	

	Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
		Dim selUser As Label = CType(FormView1.FindControl("lbl_UserName"), Label)
		'patrons_PatronProfile
		If selUser IsNot Nothing Then

			Dim delUser As String = selUser.Text

			Membership.DeleteUser(selUser.Text)

		End If

	End Sub

	Protected Sub FormView1_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewDeletedEventArgs)
		Dim delPatron As String = e.Values("FirstName").ToString()

		lbl_DeletedUser.Text = "The record" & delPatron & "has been deleted."

		Response.AddHeader("REFRESH", "3;URL=~/default.aspx")

	End Sub

	Protected Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs)

		Response.Redirect("PatronProfile.aspx")

	End Sub

	Protected Sub SqlDataSource2_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting
		' subroutine from http://stackoverflow.com/questions/19669696/gridview-delete-edit-not-working-when-using-select-parameter

		' Get a reference to the currently logged on user
		Dim currentUser As MembershipUser = Membership.GetUser()

		' Determine the currently logged on user's UserId value
		Dim currentUserId As String = currentUser.ProviderUserKey.ToString()

		' Assign the currently logged on user's UserId to the @UserId parameter
		e.Command.Parameters("@UserId").Value = currentUserId

	End Sub


	Protected Sub SqlDataSource3_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource3.Selecting

		' Get a reference to the currently logged on user
		Dim currentUser As MembershipUser = Membership.GetUser()

		' Determine the currently logged on user's UserId value
		Dim currentUserId As String = currentUser.ProviderUserKey.ToString()

		' Assign the currently logged on user's UserId to the @UserId parameter
		e.Command.Parameters("@UserId").Value = currentUserId

	End Sub
End Class
