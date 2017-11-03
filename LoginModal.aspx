<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="LoginModal.aspx.cs" Inherits="LoginModal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
            <div class="login-box primary">
                <button type="button" style="margin-right: 8px;" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"></span>
                </button>
                <div class="login-box-body">
                    <div class="modal-header">
                        <h1 class="modal-title"><b>Login</b> Portal</h1>
                        <div class="control-label col-lg-12" style="margin-top: 5px;">
                            <asp:Label ID="error" runat="server" ForeColor="#CD3333"
                                Visible="false">
                                          Incorrect User ID or Password!
                            </asp:Label>
                        </div>
                    </div>
                    <div class="modal-body">
                        <form runat="server">
                            <div class="form-group has-feedback">
                                <asp:TextBox ID="txtUserID" Style="margin-bottom: 20px;" runat="server"
                                    class="form-control" type="text"
                                    MaxLength="20" placeholder="User ID" required />
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                            </div>

                            <div class="form-group has-feedback">
                                <asp:TextBox ID="txtPassword" runat="server"
                                    class="form-control" type="password"
                                    MaxLength="20" placeholder="Password" required />
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>

                            <div class="modal-footer">
                                <asp:Button ID="btnLogin"
                                    runat="server"
                                    class="btn btn-primary pull-right"
                                    Text="Login" OnClick="btnLogin_Click" />
                                <asp:Button ID="btnClose"
                                    runat="server"
                                    class="btn btn-default pull-left" data-dismiss="modal"
                                    Text="Close" />
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>


