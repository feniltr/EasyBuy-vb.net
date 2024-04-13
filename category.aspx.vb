Imports System.Data
Imports System.Data.SqlClient
Partial Class category
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim result As Object
    Dim userName As String
    Dim category As String
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = ConfigurationManager.ConnectionStrings("connectionString").ToString
        cmd.Connection = con

        userName = CType(Session("username"), String)
        category = ddlcategory.SelectedValue

        If IsPostBack = False Then
            fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")
        End If

        If Session("username") Is Nothing OrElse String.IsNullOrEmpty(Session("username").ToString()) Then
            Response.Redirect("~/login.aspx")
        End If
    End Sub

    Sub fillgrid(ByVal qry As String)
        cmd.CommandText = qry
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

  
    Protected Sub ddlcategory_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcategory.SelectedIndexChanged
        If ddlsort.SelectedIndex = 1 Then
            fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price desc")
        Else
            fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")
        End If
    End Sub

    Protected Sub ddlsort_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlsort.SelectedIndexChanged
        If ddlsort.SelectedIndex = 1 Then
            fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price desc")
        Else
            fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")
        End If
    End Sub
End Class
