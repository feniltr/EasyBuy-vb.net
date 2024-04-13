Imports System.Data
Imports System.Data.SqlClient
Partial Class login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim constring As String = ConfigurationManager.ConnectionStrings("connectionString").ToString()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = constring
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Try
            Dim dr As SqlDataReader
            cmd.CommandText = "select * from mstuser where username='" & txtusername.Text & "' and password='" & txtpassword.Text & "'"
            con.Open()
            dr = cmd.ExecuteReader()
            If dr.HasRows = True Then
                If txtusername.Text = "admin" And txtpassword.Text = "admin" Then
                    Response.Redirect("~/AddProduct.aspx")
                Else
                    Session("username") = txtusername.Text
                    lblmsg.Text = "Username Found"
                    Response.Redirect("~/home.aspx")
                End If
            Else
                lblmsg.Text = "Username Does not exist"
            End If
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
        clearcontorl()
    End Sub
    Sub clearcontorl()
        txtusername.Text = ""
        txtpassword.Text = ""
    End Sub
End Class
