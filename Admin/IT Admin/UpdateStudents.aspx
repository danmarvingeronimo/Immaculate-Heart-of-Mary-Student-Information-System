<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UpdateStudents.aspx.cs" Inherits="Admin_IT_Admin_UpdateStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Update Student # <asp:Literal ID="ltID" runat="server"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

     <%--JIONNE LIZARDO --%>

    <form runat="server" class=" form-horizontal">
        <div class="col-lg-6">

            <div class="form-group">
                <label class="control-label col-lg-4">User ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtID" runat="server"
                        class="form-control text-capitalize"/>
                </div>
            </div>

            <div class=" form-group">
                <label class="control-label col-lg-4">First Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFN" runat="server"
                        class="form-control text-capitalize" ReadOnly />
                </div>
            </div>

            <div class=" form-group">
                <label class="control-label col-lg-4">Middle Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMN" runat="server"
                        class="form-control text-capitalize" ReadOnly />
                </div>
            </div>

            <div class=" form-group">
                <label class="control-label col-lg-4">Last Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtLN" runat="server"
                        class="form-control text-capitalize" ReadOnly />
                </div>
            </div>

            <div class=" form-group">
                <label class="control-label col-lg-4">Status ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStatus" runat="server"
                        class="form-control text-capitalize"  />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnUpdate" runat="server"
                        class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                    <a href="StudentList.aspx" class="btn btn-submit">Back to View
                    </a>
                </div>
            </div>
        </div>
    </form>
</asp:Content>

