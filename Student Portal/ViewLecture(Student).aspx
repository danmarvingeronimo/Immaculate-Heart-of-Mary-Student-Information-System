<%@ Page Title="" Language="C#" MasterPageFile="~/Student Portal/Student.master" AutoEventWireup="true" CodeFile="ViewLecture(Student).aspx.cs" Inherits="Student_Portal_ViewLecture_Student_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-book"></i>
    Lectures
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <table class="table table-hover">
            <thead>
                <th>Title</th>
                <th>File</th>
                <th>Description</th>
                <th>Date Added</th>
                <th>Uploaded By</th>
            </thead>
        <tbody>
            <asp:ListView ID="lvlectures" runat="server"
                OnItemCommand="lvlectures_ItemCommand" OnPagePropertiesChanging="lvlectures_PagePropertiesChanging"
                OnItemDataBound="lvlectures_ItemDataBound">
                <ItemTemplate>
                    <tr>
                        <asp:Literal ID="ltUploadLecture_ID" runat="server"
                            Text='<%# Eval("UploadLecture_ID") %>' Visible="false" />
                        <td><%# Eval("Title") %></td>
                        <td>
                          <a href="<%# string.Concat("../img/files/", Eval("FileContent"))%>" download > Lecture </a></td>
                        <td><%# Eval("Description") %></td>
                        <td><%# Eval("DateAdded", "{0: MMMM dd, yyyy}") %></td>
                        <td><%# Eval("Teacher") %></td>
<<<<<<< HEAD
                        <td>
                            
                        </td>
=======
                       <td>
                       <a href='Details.aspx?ID=<%#Eval("UploadLecture_ID")%>'
                                                        class="btn btn-xs btn-info" title="View Comments">
                                                        <i class="fa fa-edit"></i>
                                                    </a>

                                                </td>
                        
>>>>>>> c93b19258759c37df52e46f8870dbd64e11907ff
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

