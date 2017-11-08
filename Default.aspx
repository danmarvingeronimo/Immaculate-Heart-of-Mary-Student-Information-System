<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" MasterPageFile="~/TeacherPortal/Teacher.master" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form id="form1" runat="server">
    <div>
         <asp:FileUpload ID="Upload" runat="server" />
         <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />

        
    <table class="table table-hover">
               <thead>
                   <th>#</th>
                   <th>Student ID</th>
                   <th>First Name</th>
                   <th>Midlle Name</th>
                   <th>Last Name</th>
                   <th>Section</th>
               </thead>
    <tbody>
       <asp:ListView ID="lvStudent" runat="server"
             OnItemCommand="lvStudent_ItemCommand" OnPagePropertiesChanging="lvStudent_PagePropertiesChanging"
             OnItemDataBound="lvStudent_ItemDataBound">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Literal ID="ltStudent_ID" runat="server"
                            Text='<%# Eval("Student_ID") %>' Visible="true" />               
                    </td>
                    <td><%# Eval("Student_ID") %></td>
                    <td><%# Eval("First_Name") %></td>
                    <td><%# Eval("Middle_Name") %></td>
                    <td><%# Eval("Last_Name") %></td>
                    <%--<td><%# Eval("Section") %></td>--%>
                    <td>
                       
                         <%-- <a href='AnnouncementDetails.aspx?ID=<%#Eval("Announcement_ID")%>'
                            class="btn btn-xs btn-info" title="View File Details">
                            <i class="fa fa-edit"></i>
                        </a>--%>
                        <%--<asp:LinkButton ID="btnDelete" runat="server"
                            class="brn btn-xs btn-danger" CommandName="delfile">
                            <i class="fa fa-remove"></i>
                        </asp:LinkButton>--%>
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

    </div>
    </form>
</asp:Content>
