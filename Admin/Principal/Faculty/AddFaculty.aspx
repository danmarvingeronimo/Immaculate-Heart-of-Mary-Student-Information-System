<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="AddFaculty.aspx.cs" Inherits="Section_AddSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user-plus"></i>Add Faculty
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
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
                    <asp:textbox id="txtFN" runat="server"
                        class="form-control" maxlength="50" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Middle Name</label>
                <div class="col-lg-8">
                    <asp:textbox id="txtMN" runat="server"
                        class="form-control" maxlength="50" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Last Name</label>
                <div class="col-lg-8">
                    <asp:textbox id="txtLN" runat="server"
                        class="form-control" maxlength="50" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">User ID</label>
                <div class="col-lg-8">
                    <asp:textbox id="txtUID" runat="server"
                        class="form-control" maxlength="10" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                    <asp:textbox id="txtPass" runat="server"
                        class="form-control" type="password" mminlength="8" MaxLength="20" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Repeat Password</label>
                <div class="col-lg-8">
                    <asp:textbox id="TxtRepPass" runat="server"
                        class="form-control" type="password" minlength="8" Maxlength="20" required />
                    <asp:comparevalidator id="comparePasswords"
                        runat="server"
                        controltocompare="txtPass"
                        controltovalidate="txtRepPass"
                        errormessage="Incorrect Password!"
                        forecolor="red" />

                </div>
            </div>


            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:button id="btnAdd" runat="server"
                        class="btn btn-success" text="Add"
                        onclick="btnAdd_Click" />
                </div>
            </div>
        </div>

    </form>
</asp:Content>

