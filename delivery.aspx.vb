Imports System.Data
Imports System.Data.SqlClient

Partial Class delivery
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

        userName = CType(Session("username"), String)
        If IsPostBack = False Then
            fillgrid()
        End If


        If Session("username") Is Nothing OrElse String.IsNullOrEmpty(Session("username").ToString()) Then
            Response.Redirect("~/login.aspx")
        End If
    End Sub

    Sub fillgrid()
        cmd.CommandText = "SELECT * " &
                         "FROM tblproduct p " &
                         "INNER JOIN tblorders o ON p.watch_id = o.product_id " &
                         "WHERE o.user_name = '" & userName & "'"
        Dim dt As New DataTable
        Dim da As New SqlDataAdapter(cmd)
        da.Fill(dt)
        dl.DataSource = dt
        dl.DataBind()
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs)
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
            cmd.CommandText = "delete from tblorders where product_id='" & result & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            fillgrid()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
End Class
