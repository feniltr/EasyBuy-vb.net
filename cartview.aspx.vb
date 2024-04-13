Imports System.Data
Imports System.Data.SqlClient
Partial Class cartview
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
            fillgrid()
        End If


        If Session("username") Is Nothing OrElse String.IsNullOrEmpty(Session("username").ToString()) Then
            Response.Redirect("~/login.aspx")
        End If
    End Sub

    Sub fillgrid()
        cmd.CommandText = "select * from tblproduct where watch_id IN(select product_id from tblcart where username = '" & userName & "')"
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
        delete()
    End Sub

    Sub delete()
        Try
            cmd.CommandText = "delete from tblcart where product_id='" & result & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            fillgrid()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btnbuy_Click(ByVal sender As Object, ByVal e As System.EventArgs)
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
        Dim now As DateTime = DateTime.Now
        Dim formattedDateForSQL As String = now.ToString("yyyy-MM-dd")
        Dim status As String = "Pending"
        Try
            cmd.CommandText = "insert into tblorders values('" & userName & "','" & result & "','" & formattedDateForSQL & "','" & status & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("~/delivery.aspx")
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try
    End Sub

End Class
