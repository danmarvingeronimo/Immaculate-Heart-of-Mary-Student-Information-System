<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="EditUIDPWStudent.aspx.cs" Inherits="TeacherPortal_Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa  fa-book"></i>
     <asp:Literal ID="ltSID" runat="server" visible="true"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class=" form-horizontal">

      <div class="form-group">
                <label class="control-label col-lg-4">User ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUID" runat="server" class="form-control" type="text"  />
                </div>
            </div>
        <div class="form-group">
            <label class="control-label col-lg-4">Password</label>
            <div class="col-lg-8">
                <asp:textbox id="txtPWD" runat="server" class="form-control" type="password" />
            </div>
        </div>
            
           <div class="form-group">
               <div class="col-lg-offset-4 col-lg-8">
                   <asp:Button ID="btnUpdate" runat="server"
                       class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                   <a href="ViewFileUpload.aspx" class="btn btn-default">
                       Back to View
                   </a>
               </div>
           </div>
       
    </form>
</asp:Content>


