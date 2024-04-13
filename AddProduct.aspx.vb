Imports System.Data
Imports System.Data.SqlClient
Partial Class AddProduct
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim constring As String = ConfigurationManager.ConnectionStrings("connectionString").ToString
    Dim filepath As String = ""
    Dim category As String
    Dim editfilepath As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = constring
            cmd.Connection = con

            category = ddlcategory.SelectedValue
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        If IsPostBack = False Then
            fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")
        End If
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            If FileUpload1.HasFile = True Then
                FileUpload1.SaveAs(Server.MapPath("~/image/") + FileUpload1.FileName)
                filepath = "~/image/" + FileUpload1.FileName
            Else
                Response.Write("Select Image")
            End If
            cmd.CommandText = "Insert into tblproduct values('" & txtwname.Text & "','" & txtwprice.Text & "','" & DropDownList1.SelectedValue & "','" & filepath & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            clear()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")
    End Sub

    Sub fillgrid(ByVal qry As String)
        Try
            cmd.CommandText = qry
            Dim dt As New DataTable
            Dim da As New SqlDataAdapter(cmd)
            da.Fill(dt)
            gv.DataSource = dt
            gv.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles gv.RowDeleting
        Dim intid As Integer = gv.DataKeys(e.RowIndex).Value
        Try
            cmd.CommandText = "delete from tblproduct where watch_id = " & intid & ""
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")
    End Sub

    Protected Sub gv_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles gv.RowCancelingEdit
        Try
            gv.EditIndex = -1
            fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub

    Protected Sub gv_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles gv.RowEditing
        gv.EditIndex = e.NewEditIndex
        fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")
    End Sub

    Protected Sub gv_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles gv.RowUpdating
        Dim wn, wp, wc, wi As New TextBox
        Dim intid As Integer = gv.DataKeys(e.RowIndex).Value
        wn = gv.Rows(e.RowIndex).Cells(0).Controls(0)
        wp = gv.Rows(e.RowIndex).Cells(1).Controls(0)
        wc = gv.Rows(e.RowIndex).Cells(2).Controls(0)

        Try
            'MsgBox("update tblproduct set watch_name ='" & wn.Text & "' ,  watch_price = '" & wp.Text & "' , watch_category='" & wc.Text & "' where watch_id = " & intid & "")
            cmd.CommandText = "update tblproduct set watch_name ='" & wn.Text & "' ,  watch_price = '" & wp.Text & "' , watch_category='" & wc.Text & "' where watch_id = " & intid & ""
            con.Open()
            gv.EditIndex = -1
            cmd.ExecuteNonQuery()
            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        fillgrid("select * from tblproduct where watch_category = '" & category & "' order by watch_price")

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

    Sub clear()
        txtwname.Text = ""
        txtwprice.Text = ""
        filepath = ""
    End Sub

    Protected Sub gv_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gv.SelectedIndexChanged

    End Sub
End Class
