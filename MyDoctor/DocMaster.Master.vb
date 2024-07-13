Public Class DocMaster
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Session IsNot Nothing) Then
            Dim item As Object = Session("UserEmail")
            If (item IsNot Nothing) Then
                lnkLogin.Visible = False
                lblUserName.Text = Session("UserEmail").ToString()
                lnkUserName.Text = Session("UserEmail").ToString()
                lnkUserName.NavigateUrl = "~/Profile.aspx"
                lnkViewAppoinment.Visible = True
                liDDL.Style.Add("display", "block")
            Else
                lnkLogin.NavigateUrl = "~/Login.aspx"
                lnkViewAppoinment.Visible = False
                liDDL.Style.Add("display", "none")
            End If
        End If
    End Sub

    Protected Sub Logout(sender As Object, e As EventArgs) Handles lnkLogout.Click
        Session.Clear()
        Response.Redirect("~/DefaultPage.aspx")
    End Sub
End Class