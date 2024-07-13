Imports System.Data.SqlClient
Public Class WebForm5
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
        txtPatientEmail.Text = Session("UserEmail").ToString()
        If Not Me.IsPostBack Then
            BindState()
            BindHospital("")
        End If


    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        cmd = New SqlCommand("INSERT INTO tblPatient(Name, MobileNo, Email_Id, City, State, Address, DocName, HospitalName, Age, App_Date) VALUES(@fname, @mno, @eml, @city, @state, @add, @docName, @hosName, @age, @appDate)", conn)
        cmd.Parameters.AddWithValue("@fname", txtPatientName.Text)
        cmd.Parameters.AddWithValue("@mno", txtPatientMobile.Text)
        cmd.Parameters.AddWithValue("@eml", txtPatientEmail.Text)
        cmd.Parameters.AddWithValue("@city", ddlPatientCity.SelectedItem.ToString())
        cmd.Parameters.AddWithValue("@state", ddlPatientState.SelectedItem.ToString())
        cmd.Parameters.AddWithValue("@add", txtPatientAddress.Text)
        cmd.Parameters.AddWithValue("@docName", ddlDoctor.SelectedValue.ToString())
        cmd.Parameters.AddWithValue("@hosName", ddlHospital.SelectedItem.ToString())
        cmd.Parameters.AddWithValue("@age", Convert.ToInt32(txtPatientAge.Text))
        cmd.Parameters.AddWithValue("@appDate", DateTime.Now)
        conn.Open()

        i = cmd.ExecuteNonQuery()
        conn.Close()
        If i > 0 Then
            Response.Redirect("~/ViewAppoinment.aspx")
        End If

    End Sub

    Private Sub BindHospital(ByVal city As String)
        cmd = New SqlCommand("SELECT Hospital_Id,Hospital_Name FROM tblHospital where (City = @City)", conn)
        cmd.Parameters.AddWithValue("@City", city)
        conn.Open()
        Dim da As New SqlDataAdapter()
        da.SelectCommand = cmd
        Dim dt As New DataTable()
        da.Fill(dt)
        ddlHospital.DataSource = dt
        ddlHospital.DataTextField = "Hospital_Name"
        ddlHospital.DataValueField = "Hospital_Id"
        ddlHospital.DataBind()
        conn.Close()
        ddlHospital.Items.Insert(0, New ListItem("-Select-", ""))
    End Sub

    Private Sub BindCity(ByVal state As String)
        cmd = New SqlCommand("SELECT * FROM [tblCity] WHERE ([StateId] = @StateId)", conn)
        cmd.Parameters.AddWithValue("@StateId", state)
        conn.Open()
        Dim da As New SqlDataAdapter()
        da.SelectCommand = cmd
        Dim dt As New DataTable()
        da.Fill(dt)
        ddlPatientCity.DataSource = dt
        ddlPatientCity.DataTextField = "CityName"
        ddlPatientCity.DataValueField = "CityId"
        ddlPatientCity.DataBind()
        conn.Close()
        ddlPatientCity.Items.Insert(0, New ListItem("-Select-", ""))
    End Sub

    Private Sub BindState()
        cmd = New SqlCommand("SELECT * FROM [tblState]", conn)
        conn.Open()
        Dim da As New SqlDataAdapter()
        da.SelectCommand = cmd
        Dim dt As New DataTable()
        da.Fill(dt)
        ddlPatientState.DataSource = dt
        ddlPatientState.DataTextField = "StateName"
        ddlPatientState.DataValueField = "StateId"
        ddlPatientState.DataBind()
        conn.Close()
        ddlPatientState.Items.Insert(0, New ListItem("-Select-", ""))
    End Sub

    Protected Sub ddlHospital_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlHospital.SelectedIndexChanged


        Dim HospitalID As Integer = Convert.ToInt32(ddlHospital.SelectedValue.ToString())
        FillDocter(HospitalID)

    End Sub


    Protected Sub ddlState_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlPatientState.SelectedIndexChanged


        Dim stateId As String = ddlPatientState.SelectedItem.Value.ToString()
        BindCity(stateId)

    End Sub

    Protected Sub ddlCity_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlPatientCity.SelectedIndexChanged


        Dim city As String = ddlPatientCity.SelectedItem.Text.ToString()
        BindHospital(city)

    End Sub

    Private Sub FillDocter(ByVal Hospital_Id As Integer)
        Dim strConn As String =
        ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        Dim con As New SqlConnection(strConn)
        Dim cmd As New SqlCommand()
        cmd.Connection = con
        cmd.CommandType = CommandType.Text
        cmd.CommandText = "SELECT Doc_Id,Name FROM tblDoctor where Hospital_Id=@Hospital_Id"
        cmd.Parameters.AddWithValue("@Hospital_Id", Hospital_Id)
        Dim objDs As New DataSet()
        Dim dAdapter As New SqlDataAdapter()
        dAdapter.SelectCommand = cmd
        con.Open()
        dAdapter.Fill(objDs)
        con.Close()
        If objDs.Tables(0).Rows.Count > 0 Then
            ddlDoctor.DataSource = objDs.Tables(0)
            ddlDoctor.DataTextField = "Name"
            ddlDoctor.DataValueField = "Doc_Id"
            ddlDoctor.DataBind()
            ddlDoctor.Items.Insert(0, "--Select--")
        Else

        End If
    End Sub

End Class