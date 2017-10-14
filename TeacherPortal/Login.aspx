<%@ Page Title="Teachers Portal Login" Language="C#"  MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="TeacherPortal_Login" %>

<%@ Register Assembly="Recaptcha" Namespace="Recaptcha" TagPrefix="recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
  Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <div id="error" runat="server"
                class="alert alert-danger" visible="false">
                ID Number or password don't match.
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">ID Number</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtEmail" runat="server"
                        class="form-control" type="text" MaxLength="100" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPassword" runat="server"
                        class="form-control" type="password" MaxLength="20" required />
                </div>
            </div>
            <div class=" form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <recaptcha:RecaptchaControl ID="rcRegister" runat="server"
                        PublicKey="6LdRviATAAAAACc5ahRHppqVMx0COExz1pFLppaU"
                        PrivateKey="6LdRviATAAAAAOwZ4TdfXJxu6wS8-qzOhYNNkoKI"
                        Theme="blackglass" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:LinkButton ID="LinkButton3" runat="server" href="ForgotPassword.aspx" CssClass="Button">FORGOT PASSWORD?</asp:LinkButton>
                    <br />
                    <asp:Button ID="btnLogin" runat="server"
                        CssClass="btn btn-success" Text="Login" 
                        OnClick="btnLogin_Click"/>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
