Imports System.Data
Imports System.Data.SqlClient

Partial Class register
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim gender As String

    Dim constring As String = ConfigurationManager.ConnectionStrings("connectionString").ToString()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = constring
            cmd.Connection = con
        Catch ex As Exception
            lblmsg.Text = ex.Message
        End Try
    End Sub

    
    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        Try
            Dim dr As SqlDataReader
            cmd.CommandText = "select * from mstuser where username='" & txtusername.Text & "' and password='" & txtpassword.Text & "'"
            con.Open()

            dr = cmd.ExecuteReader()

            If dr.HasRows = True Then
                lblmsg.Text = "Username already exists"
            Else
                dr.Close()
                checkgender()
                If rdbmale.Checked Or rdbfemale.Checked Then
                    cmd.CommandText = "insert into mstuser values('" & txtemail.Text & "','" & txtusername.Text & "','" & txtaddress.Text & "','" & txtpassword.Text & "','" & gender & "' )"
                    cmd.ExecuteNonQuery()
                    lblmsg.Text = "User added"
                    clearcontorl()
                    Session("username") = txtusername.Text
                    Response.Redirect("~/login.aspx")
                Else
                    msggender.Text = "*Select Gender"
                End If
            End If
        Catch ex As Exception
            lblmsg.Text = ex.Message
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
        End Try
    End Sub

    Sub clearcontorl()
        txtusername.Text = ""
        txtpassword.Text = ""
        txtemail.Text = ""
        txtcofirmpassword.Text = ""
        txtaddress.Text = ""
        msggender.Text = ""
    End Sub

    Sub checkgender()

        If rdbmale.Checked Then
            gender = "Male"
        ElseIf rdbfemale.Checked Then
            gender = "Female"
        End If

    End Sub


End Class
