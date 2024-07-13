<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DocMaster.Master" CodeBehind="Login.aspx.vb" Inherits="MyDoctor.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="intro-content">
        <div class="container">
            <div class="row">

                <div class="col-md-6 offset-md-3">

                    <div class="panel panel-skin">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-size: x-large;">Login Here</h2>
                        </div>
                        <div class="panel-body">
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>

                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <label>Email ID:</label>
                                        <asp:TextBox runat="server" ID="txtEmail" class="form-control input-md" data-rule="minlen:3" data-msg="Please enter at least 3 chars" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <label>Password:</label>
                                        <asp:TextBox runat="server" ID="txtPassword" required="required" TextMode="Password" class="form-control input-md" data-rule="minlen:3" data-msg="Please enter at least 3 chars" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 col-lg-6 col-sm-6">
                                    <asp:Button Text="Login" ID="btnSubmit" class="btn btn-skin btn-block btn-lg" runat="server" />
                                    New User? <a href="Register.aspx" class="btn-link mt-2">Click Here</a>
                                </div>
                            </div>



                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
