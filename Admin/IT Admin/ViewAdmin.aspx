<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewAdmin.aspx.cs" Inherits="Admin_IT_Admin_ViewAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Admin List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    <th>Admin User ID #</th>
                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Last Name</th>
                    <th>Access Level</th>
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvAdmins" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("User_ID") %></td>
                                <td><%#Eval("First_Name") %></td>
                                <td><%#Eval("Middle_Name") %></td>
                                <td><%#Eval("Last_Name") %></td>
                                <td><%#Eval("UserType_Desc") %></td>

                                <td>
                                  <a href='AdminDetails.aspx?ID=<%#Eval("Admin_ID")%>'
                                      class="btn btn-xs btn-info" title="View Payment Details">
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