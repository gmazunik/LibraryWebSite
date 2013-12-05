Imports System.Data.SqlClient

Partial Class librarians_AddPatron
    Inherits System.Web.UI.Page

    Protected Sub CreateUserWizard1_ActiveStepChanged(sender As Object, e As EventArgs) Handles CreateUserWizard1.ActiveStepChanged

        ' Have we JUST reached the Complete step?
        If CreateUserWizard1.ActiveStep.Title = "Complete" Then

            Dim UserSettings As WizardStep = CType(CreateUserWizard1.FindControl("UserProfile"), WizardStep)

            ' Programmatically reference the TextBox controls

            Dim FirstName As TextBox = CType(UserSettings.FindControl("tb_FirstName"), TextBox)
            Dim LastName As TextBox = CType(UserSettings.FindControl("tb_LastName"), TextBox)
            Dim BirthDate As TextBox = CType(UserSettings.FindControl("tb_BirthDate"), TextBox)
            Dim Address1 As TextBox = CType(UserSettings.FindControl("tb_Address1"), TextBox)
            Dim Address2 As TextBox = CType(UserSettings.FindControl("tb_Address2"), TextBox)
            Dim City As TextBox = CType(UserSettings.FindControl("tb_City"), TextBox)
            Dim strPostalCode As String = ddl_StateCode.SelectedItem.Text
            Dim Zip As TextBox = CType(UserSettings.FindControl("tb_Zip"), TextBox)
            Dim PhoneNumber1 As TextBox = CType(UserSettings.FindControl("tb_PhoneNumber1"), TextBox)
            Dim PhoneNumber2 As TextBox = CType(UserSettings.FindControl("tb_PhoneNumber2"), TextBox)
            Dim Email As TextBox = CType(UserSettings.FindControl("tb_Email"), TextBox)

            ' Update the UserProfiles record for this user
            ' Get the UserID of the just-added user
            Dim newUser As MembershipUser = Membership.GetUser(CreateUserWizard1.UserName)
            Dim newUserID As Guid = CType(newUser.ProviderUserKey, Guid)

            ' Add the newly created user to the "Patron" role
            Roles.AddUserToRole(newUser.UserName, "patron")

            ' Insert a new record into UserProfiles
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
            Dim updatesql As String = "INSERT INTO [SLPL_UserProfile] ([UserID], [FirstName], [LastName], [Birthdate], [Address1], [Address2], [City], [State], [Zip], [PhoneNumber], [PhoneNumber1], [PrimaryEmail]) VALUES (@UserID, @FirstName, @LastName, @Birthdate, @Address1, @Address2, @City, @State, @Zip, @PhoneNumber, @PhoneNumber1, @PrimaryEmail)"

            Using myConnection As New SqlConnection(connectionString)
                myConnection.Open()
                Dim myCommand As New SqlCommand(updatesql, myConnection)
                myCommand.Parameters.Add(New SqlParameter("@State", strPostalCode))
                myCommand.Parameters.AddWithValue("@FirstName", FirstName.Text.Trim())
                myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim())
                myCommand.Parameters.AddWithValue("@Birthdate", BirthDate.Text.Trim())
                myCommand.Parameters.AddWithValue("@Address1", Address1.Text.Trim())
                myCommand.Parameters.AddWithValue("@Address2", Address2.Text.Trim())
                myCommand.Parameters.AddWithValue("@City", City.Text.Trim())
                myCommand.Parameters.AddWithValue("@Zip", Zip.Text.Trim())
                myCommand.Parameters.AddWithValue("@PhoneNumber", PhoneNumber1.Text.Trim())
                myCommand.Parameters.AddWithValue("@PhoneNumber1", PhoneNumber2.Text.Trim())
                myCommand.Parameters.AddWithValue("@PrimaryEmail", Email.Text.Trim())
                myCommand.Parameters.AddWithValue("@UserID", newUserID)
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using

            Dim RoleId As String = "ef343dab-add6-4c3c-ab8e-9685b7f291d0"
            Dim connectionString2 As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
            Dim updatesql2 As String = "INSERT INTO [aspnet_Users] ([RoleId]) VALUES @RoleId"

            Using myConnection2 As New SqlConnection(connectionString2)
                myConnection2.Open()
                Dim myCommand2 As New SqlCommand(updatesql2, myConnection2)
                myCommand2.Parameters.AddWithValue("@RoleId", RoleId)
            End Using

        End If

    End Sub

    Protected Sub ContinueButton_Click(sender As Object, e As EventArgs)
        Response.Redirect("ViewAllPatrons.aspx")
    End Sub






    
End Class
