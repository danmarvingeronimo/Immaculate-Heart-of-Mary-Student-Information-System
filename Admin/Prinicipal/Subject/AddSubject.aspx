<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="Faculty_Subject_AddSubject" %>

<%--<Nathaniel Collins S. Ortiz>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-book"></i>Subject Adding
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form form-horizontal">
        <div class="col-lg-6">
            <div class="form-group">
                <label class="control-label col-lg-4">Subject Name</label>
            <div class="col-lg-8">
                <asp:TextBox ID="txtSubName" runat="server"
                    class="form-control" MaxLength="25" required />
            </div>
            </div>
            <div class=" form-group">
                <label class="control-label col-lg-4">Subject Description</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtSubdes"  runat="server"
                        class=" form-control" MaxLength="50" required />
                </div>
            </div>
           <div class="form-group">
               <label class="control-label col-lg-4">Identity Code</label>
               <div class="col-lg-8">
                   <asp:TextBox ID="txtIdenCo" runat="server"
                       class="form-control" MaxLength="25" required />
               </div>
           </div>
            <div class="form-group">
                <label class="control-label col-lg-4">User ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUID" runat="server"
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
</asp:Content>

