<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="FacultyProfile.aspx.cs" Inherits="Faculty_FacultyProfile" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-user"></i> Welcome to your Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form form-horizontal">

        <div class="col-lg-6">
            <div id="success" runat="server" 
                class="alert alert-success" visible="false">
                Update Success
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtTeacherID" runat="server" class="form-control" type="Id" MaxLength="10" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher's Password</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" type="password" MaxLength="20" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher's First Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFN" runat="server" class="form-control text-capitalize" MaxLength="80" required /> 
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher's Middle Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMN" runat="server" class="form-control text-capitalize" MaxLength="10" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher's Last Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtLN" runat="server" class=" form-control" MaxLength="50" required />
                </div>
            </div>
            <div class="col-lg-12">
                <span class="pull-right">
                    <asp:Button ID="btnUpdate" runat="server" class="btn btn-success" Text="Update" onclick="btnUpdate_Click" />
                </span>
            </div>
        </div>
    </form>

</asp:Content>

