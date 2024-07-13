<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DocMaster.Master" CodeBehind="Register.aspx.vb" Inherits="MyDoctor.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="intro-content">
        <div class="container">
            <div class="row">

                <div class="col">

                    <div class="panel panel-skin">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-size: x-large;">Register Here</h2>
                        </div>
                        <div class="panel-body">
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <asp:TextBox runat="server" ID="txtFullName" required="required" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Mobile No</label>
                                        <asp:TextBox runat="server" ID="txtMobileNo"  required="required" TextMode="Number" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Email-ID</label>
                                        <asp:TextBox runat="server" ID="txtEmail" required="required" TextMode="Email" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox runat="server" ID="txtPassword" required="required" TextMode="Password" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>State</label>

                                        <asp:DropDownList runat="server" class="form-control input-md" ID="ddlStateList" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateId">
                                            <asp:ListItem Value="0">Select State</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tblState]"></asp:SqlDataSource>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>City</label>
                                        <asp:DropDownList runat="server" class="form-control input-md" ID="ddlCityList" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityId">
                                            <asp:ListItem Value="0">Select City</asp:ListItem> </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tblCity] WHERE [CityId] = @CityId" InsertCommand="INSERT INTO [tblCity] ([CityName], [StateId]) VALUES (@CityName, @StateId)" SelectCommand="SELECT * FROM [tblCity] WHERE ([StateId] = @StateId)" UpdateCommand="UPDATE [tblCity] SET [CityName] = @CityName, [StateId] = @StateId WHERE [CityId] = @CityId">
                                            <DeleteParameters>
                                                <asp:Parameter Name="CityId" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="CityName" Type="String" />
                                                <asp:Parameter Name="StateId" Type="Int32" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlStateList" Name="StateId" PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="CityName" Type="String" />
                                                <asp:Parameter Name="StateId" Type="Int32" />
                                                <asp:Parameter Name="CityId" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                               
                                <%--<div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>City</label>
                                        <select class="form-group" name="city" id="city">
                                        <option><--Select--></option>
                                        <option>Surat</option>
                                        <option>Navsari</option>
                                        </select>

                                    </div>
                                    <div class="validation"></div>
                                    
                                </div>--%>

                            </div>

                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" class="form-control input-md mb-2"  />
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
