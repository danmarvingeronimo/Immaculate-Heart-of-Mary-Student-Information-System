<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="SchedDetails.aspx.cs" Inherits="Admin_IT_Admin_AdminDetails" %>


<%-- JIONNE LIZARDO --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user"></i>
    <asp:Literal ID="ltSID" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class=" form-horizontal">

        <div class="form-group">
            <label class="control-label col-lg-4">Timeslot</label>
            <div class="col-lg-4">
                <asp:DropDownList ID="ddlTime" runat="server"
                    class="form-control" required />
            </div>
        </div>



        <div class="form-group">
            <label class="control-label col-lg-4">Subject</label>
            <div class="col-lg-4">
                <asp:DropDownList ID="ddlSubject" runat="server"
                    class="form-control" required />
            </div>
        </div>

        <div class="form-group">
            <div class="col-lg-offset-4 col-lg-8">
                <asp:Button ID="btnUpdate" runat="server"
                    class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                <a href="Schedule.aspx" class="btn btn-default">Back to View
                </a>
            </div>
        </div>

        <div class="form-group">
            <div class="col-lg-offset-4 col-lg-8">
                <asp:Label ID="error" class="col-lg-4" ForeColor="Red" runat="server" Visible="false">
                             <strong>Note!: </strong> a subject is already assigned on timeslot schedule 
                </asp:Label>
            </div>
        </div>



    </form>
</asp:Content>
