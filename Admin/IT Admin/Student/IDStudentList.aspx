<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="IDStudentList.aspx.cs" Inherits="Admin_Admission_StudentList" %>



<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Student List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <%--    DAN MARVIN GERONIMO--%>

    <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class="table table-hover">
                <thead>
                    <th>Student ID #</th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Status</th>

                </thead>
                <tbody>
                    <asp:ListView ID="lvStudents" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("User_ID") %></td>
                                <td><%#Eval("Last_Name") %></td>
                                <td><%#Eval("First_Name") %></td>
                                <td><%#Eval("Middle_Name") %></td>
                                <td><%#Eval("Status_Desc") %></td>
                                <td>

                                    <a href='AddUIDStudent.aspx?ID=<%#Eval("Student_ID")%>'
                                        class="btn btn-xs btn-info" title="View Payment Details">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                </td>


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
        </div>
    </form>

</asp:Content>

