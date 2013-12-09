﻿Imports System.Data.SqlClient

Partial Class librarians_RentMat
    Inherits System.Web.UI.Page

    Protected Sub btn_Checkout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Checkout.Click

        Dim strMatID As String = tb_MatID.Text
        Dim strUserName As String = tb_UserName.Text
        Dim RentDate As DateTime = DateTime.Now
        Dim DateDue As DateTime = DateAdd("m", 1, Today)

        Dim sqlConn As New SqlConnection(ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString)

        Dim sqlAdp As New SqlDataAdapter
        Dim sqlCmd As New SqlCommand

        sqlCmd.Connection = SqlConn
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



    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_UserName.Focus()

    End Sub
End Class
