<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="AnnouncementDetails.aspx.cs" Inherits="TeacherPortal_AnnouncementDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
      <i class="fa  fa-book"></i>
       File #<asp:Literal ID="ltAnnouncement_ID" runat="server" />
  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
      <form runat="server" class=" form-horizontal">

            <div class="form-group">
                <label class="control-label col-lg-4">Title</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtTitle" runat="server" class="form-control" type="text" required />
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
                     <asp:Button ID="btnUpdate" runat="server"
                         class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                     <a href="ViewAnnouncement.aspx" class="btn btn-default">
                         Back to View
                     </a>
                 </div>
             </div>
          </div>
      </form>
  </asp:Content>



