Imports System.Data
Imports System.Data.SqlClient
Partial Class account
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim result As Object
    Dim userName As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = ConfigurationManager.ConnectionStrings("connectionString").ToString
        cmd.Connection = con

        userName = CType(Session("username"), String)

        If IsPostBack = False Then
            fillgrid2()
        End If
    End Sub

    Sub fillgrid2()
        Try
            cmd.CommandText = "select * from mstuser where username = '" & userName & "' order by id"
            Dim dt As New DataTable
            Dim da As New SqlDataAdapter(cmd)
            da.Fill(dt)
            fv.DataSource = dt
            fv.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
