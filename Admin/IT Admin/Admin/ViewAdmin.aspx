<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewAdmin.aspx.cs" Inherits="Admin_IT_Admin_ViewAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Admin List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
   

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <div>
            <a href='AddAdmin.aspx'
             class="btn btn-xs btn-default" title="Add Admin">
              <i class="fa fa-plus"></i>
             </a>
            </div>
            <table class ="table table-hover">
                <thead>
                    <th>Admin User ID #</th>
                    <th>Full Name</th>
                    <th>Access Level</th>
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvAdmins" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("User_ID") %></td>
                                <td><%#Eval("Full Name") %></td>
                                
                                <td><%#Eval("UserType_Desc") %></td>

                                <td>
                                  <a href='AdminDetails.aspx?ID=<%#Eval("Admin_ID")%>'
                                      class="btn btn-xs btn-info" title="View Admin Details">
                                         <i class="fa fa-edit"></i>
                                 </a>

                                </td>
                                <%--<td>
                                    <img src='../../content/img/products/<%#Eval("Image") %>'
                                        width="150" />
                                </td>--%>
                                
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
        </div>
    </form>

</asp:Content>