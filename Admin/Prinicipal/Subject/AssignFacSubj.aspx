<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AssignFacSubj.aspx.cs" Inherits="Faculty" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    
     <asp:Literal ID="ltSID" runat="server" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form form-horizontal">
        <div class="col-lg-6">
            <div class="form-group">
                <label class="control-label col-lg-4">Subject</label>
                <div class="col-lg-8">
                    <asp:DropDownList ID="ddlTeacher" runat="server"
                        class="form-control" required />
                </div>
            </div>
          
            
            <%--<div class="form-group">
                <label class="control-label col-lg-4">Time</label>
                <div class="col-lg-8">
                   <asp:TextBox ID="txtTimeStamp" runat="server"
                       class="form-control" MaxLength="50" required />
                </div>--%>
           
            </div>
             
          <div class="form-group">
               <div class="col-lg-offset-4 col-lg-8">
                   <asp:Button ID="btnUpdate" runat="server"
                       class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                   <a href="ViewSubject.aspx" class ="btn btn-submit">
                       Back to View
                   </a>
               </div>
           </div>
    </form>

</asp:Content>