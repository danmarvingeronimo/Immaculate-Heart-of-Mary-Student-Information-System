<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="AssignFacSubj.aspx.cs" Inherits="Faculty" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">

    <asp:Literal ID="ltSID" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form form-horizontal">

        <div class="form-group">
            <label class="control-label col-lg-4">Subject</label>
            <div class="col-lg-4">
                <asp:DropDownList ID="ddlTeacher" runat="server"
                    class="form-control" ValidationGroup="Custom" required />

            </div>
        </div>

        <div class="form-group">
            <div class="col-lg-offset-4 col-lg-8">
                <asp:Label ID="error" ForeColor="Red" runat="server" Visible="false">
                 <strong>Note!</strong> Teacher already assigned on 2 subjects
                </asp:Label>
            </div>
        </div>

        <div class="form-group">
            <div class="col-lg-offset-4 col-lg-8">
                <asp:Button ID="btnUpdate" runat="server"
                    class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                <a href="ViewSubject.aspx" class="btn btn-default">Back to View
                </a>
            </div>
        </div>

        
        <div class="form-group text-center">
            <div class=" col-lg-12">
                <asp:label ID="add" CssClass="alert alert-success alert-dismissible" Font-Size="Large" runat="server" Visible="false">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <strong>Success! </strong>Teacher Assigned
                </asp:label>
            </div>
        </div>


    </form>

</asp:Content>
