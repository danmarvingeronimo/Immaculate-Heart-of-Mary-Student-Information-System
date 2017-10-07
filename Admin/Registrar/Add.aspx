<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="TeacherPortal_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-plus"></i> Add Announcement
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form form-horizontal">
         <div class="col-lg-6">
            <div class="form-group">
                <label class="control-label col-lg-4">Title</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtTitle" runat="server" class="form-control" type="text" required />
                </div>
            </div>
               <div class="form-group">
                <label class="control-label col-lg-4">Image</label>
                <div class="col-lg-8">
                    <asp:FileUpload ID="fuImage" runat="server"
                        class="form-control" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Description</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtDescription" runat="server" class="form-control" type="text" MaxLength="500" TextMode="MultiLine" required />
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnAdd" runat="server"
                        class="btn btn-success" Text="Add"
                        onClick="btnAdd_Click" />
                </div>
            </div>
    </form>
</asp:Content>