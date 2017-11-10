<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="ViewAdmin.aspx.cs" Inherits="Admin_IT_Admin_ViewAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

   <%--    JIONNE LIZARDO  --%>

    <div class="container-fluid" style="padding-bottom: 20px;">
          <ol class="breadcrumb">
            <li><a href="~/Admin/IT Admin/ITAdmin_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i> Home</a></li>
            <li class="active">View Admin</li>
        </ol>
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                            <h1><i class="fa fa-users" style="margin-bottom: 5px;"></i> Admin List</h1>
                            <div>
                                <br />
                                <a href='AddAdmin.aspx'
                                    class="btn btn-xs btn-default" style="margin-bottom: 20px;" title="Add Admin">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>

                            <table id="table" class="table table-hover">
                                <thead>
                                    <th>Admin User ID #</th>
                                    <th>Last Name</th>
                                    <th>First Name</th>
                                    <th>Middle Name</th>
                                    <th>Access Level</th>
                                    <th></th>

                                </thead>
                                <tbody>
                                    <asp:ListView ID="lvAdmins" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("User_ID") %></td>
                                                <td><%#Eval("Last_Name") %></td>
                                                <td><%#Eval("First_Name") %></td>
                                                <td><%#Eval("Middle_Name") %></td>

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
                                                    <h2 class="text-center">No records found!
                                                    </h2>
                                                </td>
                                            </tr>
                                        </EmptyDataTemplate>
                                    </asp:ListView>
                                </tbody>
                            </table>   
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
