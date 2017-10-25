<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="StudentList.aspx.cs" Inherits="Admin_Admission_StudentList" %>



<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <%--    JIONNE LIZARDO  --%>
    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                    <div class="box">
                        <div class="box-body">
                            <form runat="server" class="form-horizontal">
                                 <h1><i class="fa fa-users" style="margin-bottom: 20px;"></i>Student List </h1>

                                <table id="table" class="table table-hover">
                                    <thead>
                                        <th>Student ID #</th>
                                        <th>Year Level</th>
                                        <th>Last Name</th>
                                        <th>First Name</th>
                                        <th>Middle Name</th>
                                        <th>Status</th>
                                        <th></th>

                                    </thead>
                                    <tbody>
                                        <asp:ListView ID="lvStudents" runat="server" OnItemCommand="lvStudents_ItemCommand">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("User_ID") %></td>
                                                    <td><%#Eval("Year_level") %></td>
                                                    <td><%#Eval("Last_Name") %></td>
                                                    <td><%#Eval("First_Name") %></td>
                                                    <td><%#Eval("Middle_Name") %></td>
                                                    <td><%#Eval("Status_Desc") %></td>
                                                    <td>

                                                        <a href='AssignStudentSection.aspx?ID=<%#Eval("Student_ID")%>'
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
    </div>

</asp:Content>

