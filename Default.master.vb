Imports System.Data.SqlClient

Partial Class library
    Inherits System.Web.UI.MasterPage

    Protected Sub lbl_copy_Load(sender As Object, e As EventArgs) Handles lbl_copy.Load

        lbl_date.Text = DateTime.Now.ToLongDateString
        lbl_copy.Text = DateTime.Now.Year

    End Sub

    Protected Sub btn_search_Click(sender As Object, e As EventArgs) Handles btn_search.Click

        Dim strtext As String = tb_search.Text
        Dim url As String

        url = "~/ViewAllMaterials.aspx?val=" + strtext

        Response.Redirect(url)

    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click

        Response.Redirect("AddPatron.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim number2 As String

        Dim connectionString2 As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
        Dim conn2 As New SqlConnection(connectionString2)
        conn2.Open()
        Dim comm2 As New SqlCommand("SELECT COUNT(*) FROM SLPL_Materials", conn2)
        Dim reader2 As SqlDataReader = comm2.ExecuteReader()
        reader2.Read()
        number2 = Convert.ToString(reader2(0))
        conn2.Close()

        lbl_RecordCount.Text = number2


        Dim number3 As String

        Dim connectionString3 As String = ConfigurationManager.ConnectionStrings("cs_SLPL").ConnectionString
        Dim conn3 As New SqlConnection(connectionString3)
        conn3.Open()
        Dim comm3 As New SqlCommand("SELECT COUNT(*) FROM SLPL_UserProfile", conn3)
        Dim reader3 As SqlDataReader = comm3.ExecuteReader()
        reader3.Read()
        number3 = Convert.ToString(reader3(0))
        conn3.Close()

        lbl_UserCount.Text = number3


    End Sub
End Class

