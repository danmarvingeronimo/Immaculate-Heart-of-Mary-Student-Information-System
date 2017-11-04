<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="AdminDetails.aspx.cs" Inherits="Admin_IT_Admin_AdminDetails" %>


<%--DAN MARVIN GERONIMO--%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa  fa-book"></i>
    <asp:literal id="ltID" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class=" form-horizontal">
        <div class="col-lg-6">

            <div class=" form-group">
                <label class="control-label col-lg-4">User ID</label>
                <div class="col-lg-8">
                    <asp:textbox id="txtUID" runat="server"
                        class="form-control text-capitalize" maxlength="10" />
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-lg-4">Access Level</label>
                <div class="col-lg-8">
                    <asp:dropdownlist id="ddlUsers" runat="server"
                        class="form-control" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                    <asp:textbox id="txtPass" runat="server"
                        class="form-control" minlength="8" maxlength="20" type="password" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Repeat Password</label>
                <div class="col-lg-8">
                    <asp:textbox id="TxtRepPass" runat="server"
                        class="form-control" type="password" minlength="8" maxlength="20" required />
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
                    <asp:button id="btnUpdate" runat="server"
                        class="btn btn-success" text="Update" onclick="btnUpdate_Click" />
                    <a href="ViewAdmin.aspx" class="btn btn-default">Back to View
                    </a>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
