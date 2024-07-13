Imports System.Data.SqlClient
Public Class WebForm9
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
        lblEmail.Text = Session("UserEmail").ToString()



    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        cmd = New SqlCommand("INSERT INTO tblFeedBack(Email_ID, Description) VALUES(@eml, @des)", conn)
        cmd.Parameters.AddWithValue("@eml", lblEmail.Text)
        cmd.Parameters.AddWithValue("@des", txtDes.Text.Trim())
        conn.Open()
        i = cmd.ExecuteNonQuery()
        conn.Close()
        If i > 0 Then
            MsgBox("Thank you for feedback!")
            Response.Redirect("~/DefaultPage.aspx")
        End If
    End Sub
End Class