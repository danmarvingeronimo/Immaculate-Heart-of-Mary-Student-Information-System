<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="ViewAnnouncement.aspx.cs" Inherits="TeacherPortal_ViewAnnouncement" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
<i class="fa fa-book"></i>
    <asp:Literal ID="ltSID" runat="server"  Visible="true"/> Announcements
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

    <form runat="server" class="form-horizontal">
        <asp:Button ID="btnRedirect" runat="server"
         PostBackUrl="AddAnnouncement.aspx" Text="Add" OnClick="btnRedirect_Click" />

    <table class="table table-hover">
               <thead>
                   <th>Title</th>
                   <th>Image</th>
                   <th>Description</th>
                   <th>DateAdded</th>
                   <th>Uploaded By</th> 
               </thead>
    <tbody>
       <asp:ListView ID="lvAnnouncement" runat="server"
             OnItemCommand="lvAnnouncement_ItemCommand" OnPagePropertiesChanging="lvAnnouncement_PagePropertiesChanging"
             OnItemDataBound="lvAnnouncement_ItemDataBound">
            <ItemTemplate>
                <tr>
                    
                        <asp:Literal ID="ltAnnouncement_ID" runat="server"
                            Text='<%# Eval("Announcement_ID") %>' Visible="false" />               
                    
                    <td><%# Eval("Title") %></td>
                     <td>
                        <%# string.Concat("~/img/announcements/", Eval("Image")) %> />
                    </td>
                    <td><%# Eval("Description") %></td>
                    
                    <td><%# Eval("DateAdded", "{0: MMMM dd, yyyy}") %></td>
                    <td><%# Eval("Teacher") %></td>
                    <td>
                       
                          <a href='AnnouncementDetails.aspx?ID=<%#Eval("Announcement_ID")%>'
                            class="btn btn-xs btn-info" title="View File Details">
                            <i class="fa fa-edit"></i>
                        </a>
                        <asp:LinkButton ID="btnDelete" runat="server"
                            class="btn btn-xs btn-danger" CommandName="delfile">
                            <i class="fa fa-remove"></i>
                        </asp:LinkButton>
                    </td>
                
                </tr>
            </ItemTemplate>
            <EmptyDataTemplate>
                <tr>
                    <td colspan="10">
                        <h2 class="text-center">
                            No records found
                        </h2>
                    </td>
                </tr>
            </EmptyDataTemplate>
        </asp:ListView>
    </tbody>
    </table>
    </form>
</asp:Content>


