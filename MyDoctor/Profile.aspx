<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DocMaster.Master" CodeBehind="Profile.aspx.vb" Inherits="MyDoctor.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="intro-content">
        <div class="container">
            <div class="row">

                <div class="col">
                    <div class="panel panel-skin">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-size: x-large;">Your Profile</h2>
                        </div>
                        <div class="panel-body">
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>
                            <input type="hidden" runat="server" id="hdnID" value="" />
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <asp:TextBox runat="server" ID="txtFullName" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Mobile No</label>
                                        <asp:TextBox runat="server" ID="txtMobileNo" TextMode="Number" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Email-ID</label>
                                        <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" class="form-control input-md mb-2"  />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>City</label>
                                        <asp:DropDownList runat="server" class="form-control input-md" ID="ddlCity">
                                            <asp:ListItem Text="nvs" />
                                            <asp:ListItem Text="surat" />
                                        </asp:DropDownList>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <label>State</label>
                                        <asp:DropDownList runat="server" class="form-control input-md" ID="ddlState">
                                            <asp:ListItem Text="Guj" />
                                            <asp:ListItem Text="UP" />
                                        </asp:DropDownList>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2 col-lg-2 col-sm-2">
                                    <asp:Button Text="Update Profile" ID="btnSubmit" class="btn btn-skin btn-block btn-lg" runat="server" OnClick="btnSubmit_Click" />
                                </div>
                                <div class="col-md-2 col-lg-2 col-sm-2">
                                    <asp:Button Text="Change Password" ID="btnPassword" style="width:200px;" class="btn btn-success btn-block btn-lg" runat="server" />
                                </div>
                            </div>

                        </div>
                    </div>
                <//div>
            </div>
        </div>
    </div>

</asp:Content>
