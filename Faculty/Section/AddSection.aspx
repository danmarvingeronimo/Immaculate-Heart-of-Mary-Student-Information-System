<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="AddSection.aspx.cs" Inherits="Section_AddSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
<i class="fa fa-paperclip"></i>Section adding
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
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
                <label class="control-label col-lg-4">Section Name</label>
                <div class="col-lg-8">
                        <asp:TextBox ID="txtSectionName" runat="server"
                            class="form-control" MaxLength="50" required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">UserID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUserID" runat="server"
                        class="form-control" MaxLength="10" required />
                </div>
            </div>
            <div class=" form-group">
                <label class="control-label col-lg-4">Year Level</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtYL" runat="server" class="form-control" MaxLength="20" required />
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

