<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="Section_AddSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user-plus"></i> Add Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <section class="content">
        <ol class="breadcrumb">
            <li><a href="~/Admin/IT Admin/ITAdmin_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i> Home</a></li>
            <li class="active">Add Admin</li>
        </ol>

        <form runat="server" class="form form-horizontal">
            <div class="col-lg-6">
                <%--    <div class="form-group">
                <label class="control-label col-lg-4">Section ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtSectionID" runat="server"
                        class="form-control" MaxLength="8" required />
                </div>
               </div>--%>
                <div class="form-group">
                    <label class="control-label col-lg-4">First Name</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtFN" runat="server"
                            class="form-control" MaxLength="40" required />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-4">Middle Name</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtMN" runat="server"
                            class="form-control" MaxLength="40" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-4">Last Name</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtLN" runat="server"
                            class="form-control" MaxLength="40" required />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-4">User ID</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtUID" runat="server"
                            class="form-control" MaxLength="10" required />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-4">Password</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtPass" runat="server"
                            class="form-control" type="password" MaxLength="20" minlength="8" required />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-4">Repeat Password</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="TxtRepPass" runat="server"
                            class="form-control" type="password" minlength="8" MaxLength="20" required />
                        <asp:CompareValidator ID="comparePasswords"
                            runat="server"
                            ControlToCompare="txtPass"
                            ControlToValidate="txtRepPass"
                            ErrorMessage="Incorrect Password!"
                            ForeColor="red" />

                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-lg-4">Access Level</label>
                    <div class="col-lg-8">
                        <asp:DropDownList ID="ddlUsers" runat="server"
                            class="form-control" required />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-offset-4 col-lg-8">
                        <asp:Button ID="btnAdd" runat="server"
                            class="btn btn-success" Text="Add"
                            OnClick="btnAdd_Click" />
                    </div>
                </div>
            </div>

        </form>

    </section>
</asp:Content>

