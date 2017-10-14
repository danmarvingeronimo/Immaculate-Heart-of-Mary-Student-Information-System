<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Admission/Online Application/OnlineApplication.master" AutoEventWireup="true" CodeFile="ApplicationPage1.aspx.cs" Inherits="Online_Application_Application" %>

<%--Dan Marvin Geronimo--%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Student Application
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <%--<div id="error" runat="server" class="alert alert-danger"
                visible="false">
                Email address already taken!
            </div>--%>
            <div class="form-group">
                <label class="control-label col-lg-4">Grade Level</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtGradelvl" runat="server"
                        class="form-control" type="text" MaxLength="1"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">First Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFN" runat="server"
                        class="form-control" type="text" MaxLength="100"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Middle Name</label>
               <div class="col-lg-8">
                    <asp:TextBox ID="txtMN" runat="server"
                        class="form-control" type="text" MaxLength="100"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Last Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtLN" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">City</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtCity" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Barangay</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBrngy" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Municipality</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMun" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Street</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStreet" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Provincial Address</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtProvAdd" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Birth Date</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBirthDate" runat="server"
                        class="form-control" type="date" MaxLength="100"
                        required />
                </div>
            </div>
             <div class="form-group">
                <label class="control-label col-lg-4">Place of Birth</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBirthPlace" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Religion</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtReligion" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
             <div class="form-group">
                <label class="control-label col-lg-4">Date of Baptism</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBaptDate" runat="server"
                       class="form-control" type="date" MaxLength="50"
                        required />
                </div>
            </div>
             <div class="form-group">
                <label class="control-label col-lg-4">Place of Baptism</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBaptPlace" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Nationality</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtNat" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            
            
            
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnApply" runat="server"
                        CssClass="btn btn-success" Text="Submit"
                        OnClick="btnApply_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
