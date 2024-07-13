Imports System.Data.SqlClient

Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim cmd As SqlCommand
    Dim i As Int16
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn = New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        cmd = New SqlCommand("SELECT COUNT(*) FROM tblRegister WHERE Email_ID=@eml AND Pwd=@pwd", conn)
        cmd.Parameters.AddWithValue("@eml", txtEmail.Text)
        cmd.Parameters.AddWithValue("@pwd", txtPassword.Text)
        conn.Open()
        i = cmd.ExecuteScalar()
        If i > 0 Then
            Session("UserEmail") = txtEmail.Text
            Response.Redirect("~/DefaultPage.aspx")
        Else
            MsgBox("Invalid Email and Password!")
        End If
        conn.Close()
    End Sub
End Class