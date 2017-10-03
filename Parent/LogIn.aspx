<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/Parent.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="Parent_LogIn" %>

<%--DAN MARVIN GERONIMO--%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Admin Login
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <div id="error" runat="server" class="alert alert-danger"
                visible="false">
                Invalid User ID
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">
                    User ID
                </label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUserID" runat="server"
                        class="form-control" type="text"
                        MaxLength="100" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">
                    Password
                </label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPassword" runat="server"
                        class="form-control" type="password"
                        MaxLength="50" required />
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnLogin"
                        runat="server"
                        class="btn btn-success"
                        Text="Login" OnClick="btnLogin_Click"/>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
