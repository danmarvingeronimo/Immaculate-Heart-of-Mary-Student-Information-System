<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LoginStudent.aspx.cs" Inherits="LoginStudent" %>

<%@ Register Assembly="Recaptcha" Namespace="Recaptcha" TagPrefix="recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">
       <div class="divider"></div>
            <h1 class="single">STUDENT PORTAL LOG IN</h1>
                <form runat="server" class="form-horizontal" align="middle">
             <div class="col-lg-6">
            <div id="error" runat="server"
                class="alert alert-danger" visible="false">
                ID Number or password don't match.
            </div>
                <div class="form-group">
                <label class="control-label col-lg-4">ID Number</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtEmail" runat="server"
                        class="input-txt" type="text" MaxLength="100"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPassword" runat="server"
                        class="input-txt" type="password" MaxLength="20" />
                </div>
            </div><br />
            <div class=" form-group" align="middle">
                <div class="col-lg-offset-4 col-lg-8">
                    <recaptcha:RecaptchaControl ID="rcRegister" runat="server"
                        PublicKey="6LdRviATAAAAACc5ahRHppqVMx0COExz1pFLppaU"
                        PrivateKey="6LdRviATAAAAAOwZ4TdfXJxu6wS8-qzOhYNNkoKI"
                        Theme="blackglass" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <br />
                    <asp:Button ID="btnLogin" runat="server" class="btn btn--right" Type="submit" Text="Login" />
                       <%-- OnClick="btnLogin_Click"/>--%>
                         <br /><br />
                </div>
            </div>
        </div>
    </form>
</asp:Content>



