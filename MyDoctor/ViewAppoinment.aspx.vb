Imports System.Data.SqlClient
Imports System.Data

Public Class WebForm6
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

        If Not Me.IsPostBack Then
            Me.BindGrid()
        End If

    End Sub

    Protected Sub OnRowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Dim customerId As Integer = Convert.ToInt32(grdData.DataKeys(e.RowIndex).Values(0))

        Using cmd As New SqlCommand("Delete from tblPatient where PatientId=@id", conn)
            cmd.Parameters.AddWithValue("@id", customerId)
            cmd.Connection = conn
            conn.Open()
            cmd.ExecuteNonQuery()
            conn.Close()
        End Using

        Me.BindGrid()
    End Sub

    Private Sub BindGrid()
        Dim qry = "SELECT P.PatientId, P.Name, P.MobileNo, P.Email_Id, P.City, P.State, P.Address, D.Name AS DocName, P.HospitalName, P.App_Date, P.Age, D.EmailId AS DocEmail"
        qry += " FROM tblPatient P INNER JOIN tblDoctor D ON D.Doc_Id=P.DocName WHERE @eml=P.Email_Id"
        cmd = New SqlCommand(qry, conn)
        'cmd = New SqlCommand("SELECT PatientId, Name, MobileNo, Email_Id, City, Address, DocName, HospitalName, Age, App_Date FROM tblPatient WHERE Email_Id=@eml", conn)
        cmd.Parameters.AddWithValue("@eml", Session("UserEmail").ToString())
        conn.Open()
        Dim da As New SqlDataAdapter()
        da.SelectCommand = cmd
        Dim dt As New DataTable()
        da.Fill(dt)
        grdData.DataSource = dt
        grdData.DataBind()
        conn.Close()
    End Sub

End Class