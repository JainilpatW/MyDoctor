<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DocMaster.Master" CodeBehind="Patient_Appoinment.aspx.vb" Inherits="MyDoctor.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="intro-content">
        <div class="container">
            <div class="row">

                <div class="col">

                    <div class="panel panel-skin">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-size: x-large;">Make an Appointment</h2>
                        </div>
                        <div class="panel-body">
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Patient Name</label>
                                        <asp:TextBox runat="server" ID="txtPatientName" required="required" class="form-control input-md" />
                                        <div class=""></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Patient Age</label>
                                        <asp:TextBox runat="server" ID="txtPatientAge" required="required" TextMode="Number" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Mobile No</label>
                                        <asp:TextBox runat="server" ID="txtPatientMobile"  required="required" TextMode="Number" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Email-ID</label>
                                        <asp:TextBox runat="server" ID="txtPatientEmail"  TextMode="Email" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>State</label>
                                        <asp:DropDownList class="form-control input-md" ID="ddlPatientState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                            
                                        </asp:DropDownList>
                                        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblState]"></asp:SqlDataSource>--%>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>City</label>
                                        <asp:DropDownList class="form-control input-md" ID="ddlPatientCity" runat="server" AutoPostBack="True" Width="547px" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblCity] WHERE ([StateId] = @StateId)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlPatientState" Name="StateId" PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>--%>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Select Hospital</label>
                                        <asp:DropDownList class="form-control input-md" ID="ddlHospital" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlHospital_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Hospital_Id], [Hospital_Name] FROM [tblHospital] WHERE ([City] = @CityId)">
                                        </asp:SqlDataSource>--%>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Select Doctor</label>
                                        <asp:DropDownList class="form-control input-md" ID="ddlDoctor" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="Doc_Id">
                                            
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Doc_Id], [Hospital_Id], [Name] FROM [tblDoctor] WHERE ([Hospital_Id] = @Hospital_Id)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlHospital" Name="Hospital_Id" PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            

                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <asp:TextBox runat="server" ID="txtPatientAddress" TextMode="MultiLine" class="form-control input-md mb-2"  />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2 col-lg-2 col-sm-2">
                                    <asp:Button Text="Submit" ID="btnSubmit" class="btn btn-skin btn-block btn-lg" runat="server" />
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
