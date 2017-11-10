<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="FacultyList.aspx.cs" Inherits="Faculty" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <%-- JIONNE LIZARDO  --%>

    <div class="container-fluid" style="padding-bottom: 20px;">

        <ol class="breadcrumb">
            <li><a href="~/Admin/IT Admin/ITAdmin_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i> Home</a></li>
            <li class="active">View Faculty</li>
        </ol>

        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                            <h1><i class="fa fa-users" style="margin-bottom: 20px;"></i> Faculty </h1>
                            <table id="table" class="table table-hover">
                                <thead>
                                    <th>Last Name</th>
                                    <th>First Name</th>
                                    <th>Middle Name</th>
                                    <th>User ID</th>
                                    <th></th>
                                </thead>
                                <tbody>
                                    <asp:listview id="lvFaculty" runat="server" onitemcommand="lvFaculty_ItemCommand">
                       <ItemTemplate>
                           <tr>
                               <asp:Literal ID="ltTeacherID" runat="server"
                                  Text='<%# Eval("Teacher_ID") %>' Visible="false" />

                               <td><%# Eval("Teacher_LastName") %></td>
                               <td><%# Eval("Teacher_FirstName") %></td>
                               <td><%# Eval("Teacher_MiddleName") %></td>
                               <td><%# Eval("User_ID") %></td>
                               <td>
                                   <a href='EditFacultyUIDPW.aspx?ID=<%#Eval("Teacher_ID")%>'
                                     class="btn btn-xs btn-info" title="Edit User ID/Password">
                                    <i class="fa fa-edit"></i>
                                   </a>
                                    
                               </td>
                           </tr>
                       </ItemTemplate>
                       <EmptyDataTemplate>
                           <tr>
                               <td colspan="10">
                                   <h2 class="text-center">
                                       no records found!
                                   </h2>
                               </td>
                           </tr>
                       </EmptyDataTemplate>
                   </asp:listview>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

