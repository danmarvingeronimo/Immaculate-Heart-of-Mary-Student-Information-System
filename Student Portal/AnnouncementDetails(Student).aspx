<%@ Page Title="" Language="C#" MasterPageFile="~/Student Portal/Student.master" AutoEventWireup="true" CodeFile="AnnouncementDetails(Student).aspx.cs" Inherits="TeacherPortal_AnnouncementDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
      <i class="fa  fa-book"></i>
       Announcements!<asp:Literal ID="ltAnnouncement_ID" runat="server" visible="false"/>
  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
      <form runat="server" class=" form-horizontal">
          <div class="form-group">
              <label class="control-label col-lg-4">Title</label>
              <div class="col-lg-8">
                  <asp:Label runat="server" ID="txtTitle" >Title: <%# Eval("Title") %></asp:Label>
                  </div>
              
          </div>
          <div class="form-group">
              <label class="control-label col-lg-4">Description</label>
              <div class="col-lg-8">
                  <asp:Label runat="server" ID="txtDescription"><%# Eval("Description") %></asp:Label>
              </div>
              </div>
             <div class="form-group">
                 <div class="col-lg-offset-4 col-lg-8">
                     <asp:Button ID="btnRedirect" runat="server"
                         class="btn btn-success" Text="Back to View" OnClick="btnRedirect_Click" />
                   <%--  <asp:Button ID="btnback" runat="server" Text="Back To View"
                          PostBackUrl="ViewAnnouncement.aspx" />--%>
               </div>
             </div>

      </form>
  </asp:Content>



