Imports System.Data.SqlClient
Public Class WebForm7
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim i As Int16
    Dim cmd As SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn = New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        If (Session IsNot Nothing) Then
            Dim item As Object = Session("UserEmail")
            If (item Is Nothing) Then
                Response.Redirect("~/Login.aspx")
            End If
        End If
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        cmd = New SqlCommand("select Pwd from tblRegister where Email_ID=@eml", conn)
        cmd.Parameters.AddWithValue("@eml", Session("UserEmail").ToString())
        conn.Open()
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        Dim pwd As String = ds.Tables(0).Rows(0)(0).ToString()
        If pwd = txtOldPWD.Text.ToString().Trim() Then
            cmd = New SqlCommand("update tblRegister set Pwd=@pwd where Email_ID=@eml", conn)
            cmd.Parameters.AddWithValue("@pwd", txtRePWD.Text.ToString().Trim())
            cmd.Parameters.AddWithValue("@eml", Session("UserEmail").ToString())
            Dim i As Int16 = cmd.ExecuteNonQuery()
            If i > 0 Then
                MsgBox("Password is updated please login to verify!")
                Session.Clear()
                Response.Redirect("~/Login.aspx")
            Else
                MsgBox("Something wrong")
            End If
        Else
            MsgBox("Your old password is wrong!")
        End If
        conn.Close()
    End Sub
End Class