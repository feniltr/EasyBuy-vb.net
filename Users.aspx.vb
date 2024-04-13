Imports System.Data
Imports System.Data.SqlClient
Partial Class Users
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim constring As String = ConfigurationManager.ConnectionStrings("connectionString").ToString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = constring
            cmd.Connection = con

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        If IsPostBack = False Then
            fillgrid()
        End If
    End Sub

    Sub fillgrid()
        Try
            cmd.CommandText = "select * from mstuser order by id"
            Dim dt As New DataTable
            Dim da As New SqlDataAdapter(cmd)
            da.Fill(dt)
            gv.DataSource = dt
            gv.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

End Class
