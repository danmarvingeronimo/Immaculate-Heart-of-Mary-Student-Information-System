<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="SectionDetails.aspx.cs" Inherits="Faculty_Section_SectionDetails" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa  fa-book"></i>
     Section #<asp:Literal ID="ltID" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class=" form-horizontal">
        <div class="col-lg-6">
            <div class=" form-group">
            <label class="control-label col-lg-4">Section Name</label>
            <div class="col-lg-8">
                <asp:TextBox ID="txtSName" runat="server"
                    class="form-control text-capitalize" required />
            </div>
            </div>
            
            <div class=" form-group">
            <label class="control-label col-lg-4">Year Level</label>
            <div class="col-lg-8">
                <asp:TextBox ID="txtYL" runat="server"
                    class="form-control text-capitalize" required />
            </div>
        </div>
           <div class="form-group">
               <div class="col-lg-offset-4 col-lg-8">
                   <asp:Button ID="btnUpdate" runat="server"
                       class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                   <a href="ViewSection.aspx" class="btn btn-default">
                       Back to View
                   </a>
               </div>
           </div>
        </div>
    </form>
</asp:Content>

