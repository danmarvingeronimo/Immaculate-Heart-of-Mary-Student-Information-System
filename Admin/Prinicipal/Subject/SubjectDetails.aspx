<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="SubjectDetails.aspx.cs" Inherits="Faculty_Subject_SubjectDetails" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
<i class="fa fa-book"></i>
    Subject #<asp:Literal ID="ltID" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
<form runat="server" class=" form-horizontal">
    <div class="col-lg-6">
        <div class=" form-group">
            <label class="control-label col-lg-4">Subject Name</label>
            <div class="col-lg-8">
                <asp:TextBox ID="txtSName" runat="server"
                    class="form-control text-capitalize" required />
            </div>
        </div>
        <div class=" form-group">
            <label class="control-label col-lg-4">Subject Description</label>
            <div class="col-lg-8">
                <asp:TextBox ID="TxtSubdes" runat="server"
                    class="form-control text-capitalize" required />
            </div>
        </div>
         <div class=" form-group">
            <label class="control-label col-lg-4">Identity Code</label>
            <div class="col-lg-8">
                <asp:TextBox ID="txtIdenCo" runat="server"
                    class="form-control text-capitalize" required />
            </div>
        </div>
         <div class=" form-group">
            <label class="control-label col-lg-4">UserID</label>
            <div class="col-lg-8">
                <asp:TextBox ID="txtUID" runat="server"
                    class="form-control " required />
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-offset-4 col-lg-8">
                <asp:Button ID="btnUpdate" runat="server"
                    class="btn btn-success" Text="Update" OnClick="btnUpdate_Click"  />
                <a href="ViewSubject.aspx" class="btn btn-default">
                    Back to View
                </a>

            </div>
        </div>
    </div>
</form>
</asp:Content>

