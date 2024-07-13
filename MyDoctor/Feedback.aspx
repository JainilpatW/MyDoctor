<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DocMaster.Master" CodeBehind="Feedback.aspx.vb" Inherits="MyDoctor.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="intro-content">
        <div class="container">
            <div class="row">

                <div class="col-md-6 offset-md-3">

                    <div class="panel panel-skin">
                        <div class="panel-heading">
                            <h2 class="panel-title" style="font-size: x-large;">Give Feedback</h2>
                        </div>
                        <div class="panel-body">
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>

                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <label>Email-ID</label><br />
                                        <strong><asp:Label class="list" Text="" ID="lblEmail" runat="server" /></strong>
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <label>Description/Suggestion</label>
                                        <asp:TextBox runat="server" ID="txtDes" required="required" TextMode="MultiLine"  class="form-control input-md" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-lg-6 col-sm-6">
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
