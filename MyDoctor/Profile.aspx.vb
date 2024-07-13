Imports System.Data.SqlClient
Public Class WebForm4
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dt As DataSet = New DataSet()
    Dim i As Int16
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        conn = New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)
        If Not Me.IsPostBack Then
            Dim item As Object = Session("UserEmail")

            If (item IsNot Nothing) Then
                cmd = New SqlCommand("SELECT * FROM tblRegister WHERE Email_ID=@eml", conn)
                cmd.Parameters.AddWithValue("@eml", Session("UserEmail").ToString())
                da = New SqlDataAdapter(cmd)
                da.Fill(dt)
            Else
                Response.Redirect("~/Login.aspx")
            End If
            conn.Close()
            hdnID.Value = Convert.ToInt32(dt.Tables(0).Rows(0)(0).ToString())
            txtFullName.Text = dt.Tables(0).Rows(0)(1).ToString()
            txtMobileNo.Text = dt.Tables(0).Rows(0)(7).ToString()
            txtEmail.Text = dt.Tables(0).Rows(0)(2).ToString()


            ddlCity.SelectedValue = dt.Tables(0).Rows(0)(4).ToString()

            ddlState.SelectedValue = dt.Tables(0).Rows(0)(5).ToString()

            txtAddress.Text = dt.Tables(0).Rows(0)(6).ToString()
        End If

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim id As Int16 = Convert.ToInt32(hdnID.Value.ToString())
        Dim eml As String = txtEmail.Text.ToString()
        cmd = New SqlCommand("update tblRegister set FullName=@fname, Address=@add, MobileNo=@mno where Email_ID=@eml", conn)
        cmd.Parameters.AddWithValue("@fname", txtFullName.Text.ToString())
        cmd.Parameters.AddWithValue("@add", txtAddress.Text.ToString())
        cmd.Parameters.AddWithValue("@mno", txtMobileNo.Text.ToString())
        cmd.Parameters.AddWithValue("@eml", eml)
        cmd.Parameters.AddWithValue("@id", id)
        conn.Open()
        i = cmd.ExecuteNonQuery()
        conn.Close()
        If i > 0 Then
            MsgBox("Your profile is update!")
            Response.Redirect("~/Profile.aspx")
        End If
    End Sub

    Protected Sub btnPassword_Click(sender As Object, e As EventArgs) Handles btnPassword.Click
        Response.Redirect("~/ResetPassword.aspx")
    End Sub
End Class