Imports System.Data.SqlClient

Partial Class librarians_CheckinMat
    Inherits System.Web.UI.Page

    Protected Sub btn_Checkin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Checkin.Click

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

    End Sub

End Class
