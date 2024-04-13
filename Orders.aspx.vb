Imports System.Data
Imports System.Data.SqlClient
Partial Class Orders
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
    End Sub

    Sub fillgrid()
        Try
            cmd.CommandText = "SELECT * " &
                         "FROM tblproduct p " &
                         "INNER JOIN tblorders o ON p.watch_id = o.product_id " &
                          "INNER JOIN mstuser u ON o.user_name = u.username "
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
