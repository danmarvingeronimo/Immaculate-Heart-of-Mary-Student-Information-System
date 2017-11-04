<%@ Page Title="" Language="C#" MasterPageFile="~/Student Portal/Student.master" AutoEventWireup="true" CodeFile="ViewSubject.aspx.cs" Inherits="Subject_ViewSubject" %>

<%--<Nathaniel Collins S. Ortiz>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Subject List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    
                    <th>Subject</th>
                    
                  
                    
                </thead>
                <tbody>
                     <asp:ListView ID="lvSubject" runat="server" OnItemCommand="lvSubject_ItemCommand" OnItemDataBound="lvSubject_ItemDataBound">
                        <ItemTemplate>
                            <tr>
                                 
                       
                                <td><%#Eval("Subject_Name") %></td>
                                 

                                <td>
                                <a href='ViewAnnouncement.aspx?ID=<%#Eval("Subject_ID")%>'
                                     class="btn btn-xs btn-info" title="View Announcements">
                                    View Announcements
                        </a>
                                    <a href='ViewLecture(Student).aspx?ID=<%#Eval("Subject_ID")%>'
                                     class="btn btn-xs btn-info" title="View Lecture">
                                    View Lectures
                        </a>
                                    <a href='ViewHW(Student).aspx?ID=<%#Eval("Subject_ID")%>'
                                     class="btn btn-xs btn-info" title="View Homework">
                                    View HW
                        </a>

                                </td>
                            </tr>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <tr>
                                <td colspan="10">
                                    <h2 class="text-center">
                                        No records found!
                                    </h2>
                                </td>
                            </tr>
                        </EmptyDataTemplate>
                    </asp:ListView>
                </tbody>
            </table>
             <div class="col-lg-offset-5">

               
           </div>
        </div>
    </form>

</asp:Content>

