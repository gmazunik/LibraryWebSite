Imports System.Data.SqlClient

Partial Class librarians_CheckinMat
    Inherits System.Web.UI.Page

    Protected Sub btn_Checkin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Checkin.Click


        Dim number2 As String
        Dim MatID As String = tb_MatID.Text

        Dim connectionString2 As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
        Dim conn2 As New SqlConnection(connectionString2)
        conn2.Open()
        Dim comm2 As New SqlCommand("SELECT COUNT(*) FROM SLPL_Rentals WHERE (MatID = '" & MatID & "')", conn2)
        Dim reader2 As SqlDataReader = comm2.ExecuteReader()
        reader2.Read()
        number2 = Convert.ToString(reader2(0))
        conn2.Close()

        If number2 = 0 Then

            Response.Write("<script>alert('The material has not been checked out yet.');</script>")

        Else
            Dim strMatID As String = tb_MatID.Text

            Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)

            Dim sqlAdp As New SqlDataAdapter
            Dim sqlCmd As New SqlCommand

            sqlCmd.Connection = sqlConn
            sqlCmd.CommandText = "sp_SLPL_Checkin"
            sqlCmd.CommandType = Data.CommandType.StoredProcedure

            sqlCmd.Parameters.Add(New SqlParameter("@MatID", strMatID))

            sqlConn.Open()
            sqlCmd.ExecuteNonQuery()
            sqlConn.Close()

            Response.Redirect("ViewAllMaterials.aspx")
        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_MatID.Focus()

    End Sub
End Class
