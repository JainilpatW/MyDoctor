Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class WebForm3
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim i As Int16
    Dim cmd As SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn = New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        cmd = New SqlCommand("SELECT Email_ID FROM tblRegister WHERE Email_ID=@eml", conn)
        cmd.Parameters.AddWithValue("@eml", txtEmail.Text)
        conn.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.HasRows Then
            MsgBox("This Email_ID is already taken please enter different Email_ID!")
            dr.Close()
            conn.Close()
        Else
            dr.Close()
            cmd = New SqlCommand("INSERT INTO tblRegister(FullName, Email_ID, Pwd, City, State, Address, MobileNo, RegDate) VALUES(@fname, @eml, @pwd, @city, @state, @add, @mno, @rDate)", conn)
            cmd.Parameters.AddWithValue("@fname", txtFullName.Text)
            cmd.Parameters.AddWithValue("@eml", txtEmail.Text)
            cmd.Parameters.AddWithValue("@pwd", txtPassword.Text)
            cmd.Parameters.AddWithValue("@city", ddlCityList.SelectedItem.ToString())
            cmd.Parameters.AddWithValue("@state", ddlStateList.SelectedItem.ToString())
            cmd.Parameters.AddWithValue("@add", txtAddress.Text)
            cmd.Parameters.AddWithValue("@mno", txtMobileNo.Text.ToString())
            cmd.Parameters.AddWithValue("@rDate", DateTime.Now)

            i = cmd.ExecuteNonQuery()
            conn.Close()
            If i > 0 Then
                MsgBox("You are successfully registered, Now please login!")
                Response.Redirect("~/Login.aspx")
            End If
        End If

    End Sub
End Class