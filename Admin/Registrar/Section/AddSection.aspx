<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="AddSection.aspx.cs" Inherits="Section_AddSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user-plus"></i>Add Section
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">



    <ol class="breadcrumb">
        <li><a href="~/Admin/Registrar/Registrar_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i> Home</a></li>
        <li class="active">Add Section</li>
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
                <label class="control-label col-lg-4">Section Name</label>
                <div class="col-lg-8">
                    <asp:textbox id="txtSectionName" runat="server"
                        class="form-control" maxlength="50" required />
                </div>
            </div>

            <div class=" form-group">
                <label class="control-label col-lg-4">Grade Level</label>
                <div class="col-lg-8">
                    <asp:textbox id="txtYL" runat="server" class="form-control" maxlength="20" required />
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

