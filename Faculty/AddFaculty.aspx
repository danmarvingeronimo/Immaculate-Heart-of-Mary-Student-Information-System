<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="AddFaculty.aspx.cs" Inherits="Faculty_AddFaculty" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-plus"></i>Faculty adding
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form form-horizontal">
        <div class="col-lg-6">
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtTeacherID" runat="server"
                        class="form-control" MaxLength="20" required />
                </div>
            </div>
           <%-- <div class="form-group">
                <label class="control-label col-lg-4">UserType ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUsertyID" runat="server"
                         class="form-control" MaxLength="8" required />
                </div>
            </div> --%> 
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher's Password</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPassword" runat="server"
                         class="form-control" type="password" MaxLength="20" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher's First Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFName" runat="server"
                        class="form-control" MaxLength="50" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher's Middle Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMName" runat="server"
                        class="form-control" MaxLength="10" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Teacher's Last Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtLname" runat="server"
                        class="form-control" MaxLength="50" required />
                </div>
            </div>
            
            <%--<div class="form-group">
                <label class="control-label col-lg-4">Time</label>
                <div class="col-lg-8">
                   <asp:TextBox ID="txtTimeStamp" runat="server"
                       class="form-control" MaxLength="50" required />
                </div>--%>
           
            </div>
             
           
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnAdd" runat="server"
                        class="btn btn-success" Text="Add"
                         OnClick="btnAdd_Click" />
                </div>
            </div>
    </form>

</asp:Content>


