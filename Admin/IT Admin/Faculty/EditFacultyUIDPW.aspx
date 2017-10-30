<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="EditFacultyUIDPW.aspx.cs" Inherits="Faculty_Section_SectionDetails" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa  fa-book"></i>
    Section #<asp:literal id="ltID" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class=" form-horizontal">
        <div class="col-lg-6">
            <div class="form-group">

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
                            class="form-control" type="password" minlength="8" Maxlength="20" required />
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



            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:button id="btnUpdate" runat="server"
                        class="btn btn-success" text="Update" onclick="btnUpdate_Click" />
                    <a href="FacultyList.aspx" class="btn btn-default">Back to View
                    </a>
                </div>
            </div>
        </div>
    </form>
</asp:Content>

