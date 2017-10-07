<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="ViewUpload.aspx.cs" Inherits="TeacherPortal_Class" %>


<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
<i class="fa fa-book">Uploaded Files</i>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <asp:Button ID="btnRedirect" runat="server"
         PostBackUrl="Upload.aspx" Text="Add" OnClick="btnRedirect_Click" />
    <table class="table table-hover">
               <thead>
                   <th>ID</th>
                   <th>Title</th>
                   <th>Description</th>
                   <th>Description</th>
                   <th>File Uploaded</th>
                   <th>Date</th>
                   <th>Uploaded By</th> 
               </thead>
    <tbody>
        <asp:ListView ID="lvFile" runat="server"
             OnItemCommand="lvFile_ItemCommand" OnPagePropertiesChanging="lvFile_PagePropertiesChanging"
             OnItemDataBound="lvFile_ItemDataBound">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Literal ID="ltID" runat="server"
                            Text='<%# Eval("ID") %>' Visible="true" />               
                    </td>
                    <td><%# Eval("Title") %></td>
                    <td><%# Eval("Description") %></td>
                    <td>
                        <%# string.Concat("~/img/files/", Eval("FileContent")) %> />
                    </td>
                    <td><%# Eval("Date", "{0: MMMM dd, yyyy}") %></td>
                    <td><%# Eval("UploadedBy") %></td>
                    <td>
                       
                        <a href='FileDetails.aspx?ID=<%#Eval("ID")%>'
                            class="btn btn-xs btn-info" title="View File Details">
                            <i class="fa fa-edit"></i>
                        </a>
                        <asp:LinkButton ID="btnDelete" runat="server"
                            class="brn btn-xs btn-danger" CommandName="delfile">
                            <i class="fa fa-remove"></i>
                        </asp:LinkButton>
                    </td>
                
                </tr>
            </ItemTemplate>
            <EmptyDataTemplate>
                <tr>
                    <td colspan="10">
                        <h2 class="text-center">
                            no records found
                        </h2>
                    </td>
                </tr>
            </EmptyDataTemplate>
        </asp:ListView>
    </tbody>
    </table>

 
    </form>
    
   
</asp:Content>




