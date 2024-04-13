Imports System.Data
Imports System.Data.SqlClient
Partial Class home
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim intid As Integer
    Dim userName As String
    Dim record As String
    Dim result As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = ConfigurationManager.ConnectionStrings("connectionString").ToString
        cmd.Connection = con
        If IsPostBack = False Then
            fillgrid()
        End If
        userName = CType(Session("username"), String)
        If Session("username") Is Nothing OrElse String.IsNullOrEmpty(Session("username").ToString()) Then
            Response.Redirect("~/login.aspx")
        End If
    End Sub

    Sub fillgrid()
        cmd.CommandText = "select * from tblproduct order by watch_id"
        Dim dt As New DataTable
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        dl.DataSource = dt
        dl.DataBind()
    End Sub

    Protected Sub btncart_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim button As Button = CType(sender, Button)
        Dim watchId As Integer = Convert.ToInt32(button.CommandArgument)
        Dim query As String = "SELECT watch_id FROM tblproduct WHERE watch_id = @watchId"
        cmd.CommandText = query
        cmd.Parameters.Clear()
        cmd.Parameters.AddWithValue("@watchId", watchId)
        con.Open()
        result = cmd.ExecuteScalar()
        con.Close()
        insert()
    End Sub


    Sub insert()
        Try
            cmd.CommandText = "insert into tblcart values('" & userName & "','" & result & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub


End Class
