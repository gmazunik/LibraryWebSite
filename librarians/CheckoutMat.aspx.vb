Imports System.Data.SqlClient

Partial Class librarians_RentMat
    Inherits System.Web.UI.Page

    Protected Sub btn_Checkout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Checkout.Click

        Dim UserName As String = tb_UserName.Text
        Dim connectionString0 As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
        Dim conn0 As New SqlConnection(connectionString0)
        conn0.Open()
        Dim comm0 As New SqlCommand("SELECT COUNT(*) FROM aspnet_Users WHERE (UserName = '" & UserName & "')", conn0)
        Dim reader0 As SqlDataReader = comm0.ExecuteReader()
        Dim number0 As String
        reader0.Read()
        number0 = Convert.ToString(reader0(0))
        conn0.Close()
        If number0 = 0 Then

            Response.Write("<script>alert('Cannot find the user in the patron database.');</script>")


        Else
            Try

                Dim number2 As String
                Dim MatID As String = tb_MatID.Text

                Dim connectionString2 As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
                Dim conn2 As New SqlConnection(connectionString2)
                conn2.Open()
                Dim comm2 As New SqlCommand("SELECT COUNT(*) FROM SLPL_Materials WHERE (MatID = '" & MatID & "')", conn2)
                Dim reader2 As SqlDataReader = comm2.ExecuteReader()
                reader2.Read()
                number2 = Convert.ToString(reader2(0))
                conn2.Close()

                If number2 = 0 Then

                    Response.Write("<script>alert('Cannot find the material in the material database.');</script>")

                Else

                    Dim number1 As String
                    Dim MatID1 As String = tb_MatID.Text


                    Dim connectionString1 As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
                    Dim conn1 As New SqlConnection(connectionString1)
                    conn1.Open()
                    Dim comm1 As New SqlCommand("SELECT COUNT(*) FROM SLPL_Rentals WHERE (MatID = '" & MatID & "')", conn1)
                    Dim reader1 As SqlDataReader = comm1.ExecuteReader()
                    reader1.Read()
                    number1 = Convert.ToString(reader1(0))
                    conn1.Close()

                    If number1 = 1 Then

                        Response.Write("<script>alert('Sorry, the material has been checked out.');</script>")

                    Else

                        Dim strMatID As String = tb_MatID.Text
                        Dim strUserName As String = tb_UserName.Text
                        Dim RentDate As DateTime = DateTime.Now
                        Dim DateDue As DateTime = DateAdd("m", 1, Today)

                        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)

                        Dim sqlAdp As New SqlDataAdapter
                        Dim sqlCmd As New SqlCommand

                        sqlCmd.Connection = sqlConn
                        sqlCmd.CommandText = "sp_SLPL_Checkout"
                        sqlCmd.CommandType = Data.CommandType.StoredProcedure

                        sqlCmd.Parameters.Add(New SqlParameter("@UserName", strUserName))
                        sqlCmd.Parameters.Add(New SqlParameter("@MatID", strMatID))
                        sqlCmd.Parameters.Add(New SqlParameter("@RentDate", RentDate))
                        sqlCmd.Parameters.Add(New SqlParameter("@DateDue", DateDue))
                        sqlConn.Open()
                        sqlCmd.ExecuteNonQuery()
                        sqlConn.Close()

                        Response.Redirect("ViewAllCheckouts.aspx")
                    End If
                End If
            Catch ex As Exception

            End Try
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_UserName.Focus()

    End Sub
End Class
