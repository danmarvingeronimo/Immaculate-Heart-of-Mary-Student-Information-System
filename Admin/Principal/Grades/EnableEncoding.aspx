<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="EnableEncoding.aspx.cs" Inherits="Admin_Principal_Faculty_AssignFacSec" %>

<%--JIONNE LIZARDO --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    
     <asp:Literal ID="ltSID" runat="server" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form form-horizontal">

            <div class="form-group">
                <label class="control-label col-lg-4">Encoding Status</label>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlStatus" runat="server"
                        class="form-control" required />
                </div>
            </div>

        <div class="form-group">
            <div class="col-lg-offset-4 col-lg-8">
                <asp:Label ID="error" ForeColor="Blue" runat="server" Visible="false">
                 <strong></strong> Encoding Status: Disabled!
                </asp:Label>
            </div>
        </div>
               
          <div class="form-group">
               <div class="col-lg-offset-4 col-lg-8">
                   <asp:Button ID="btnUpdate" runat="server"
                       class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                   <a href="../Principal_index.aspx" class ="btn btn-default">
                       Back to View
                   </a>
               </div>
           </div>
    </form>

</asp:Content>