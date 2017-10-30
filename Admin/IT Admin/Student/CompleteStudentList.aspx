<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="CompleteStudentList.aspx.cs" Inherits="Admin_Admission_StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user"></i>
    <asp:literal id="ltSID" runat="server" visible="true" />
    Student List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <%--    JIONNE LIZARDO --%>
    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">

                             <a href='ITAdminViewSection.aspx'
                                   class="btn btn-xs btn-success" style="margin-bottom: 20px">Back to View </a>

                            <table id="table" class="table table-hover">
                                <thead>
                                    <th>Student ID #</th>
                                    <th>Last Name</th>
                                    <th>First Name</th>
                                    <th>Middle Name</th>
                                    <th>Status</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:listview id="lvStudents" runat="server">
                        <ItemTemplate>
                            <tr>
                                <asp:Literal ID="ltStudentID" runat="server"
                                  Text='<%# Eval("Student_ID") %>' Visible="false" />
                                <td><%#Eval("User_ID") %></td>
                                <td><%#Eval("Last_Name") %></td>
                                <td><%#Eval("First_Name") %></td>
                                <td><%#Eval("Middle_Name") %></td>
                                <td><%#Eval("Status_Desc") %></td>
                                <td>
                                    <a href='EditUIDPWStudent.aspx?ID=<%#Eval("Student_ID")%>'
                                        class="btn btn-xs btn-info" title="View Schedule">
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

