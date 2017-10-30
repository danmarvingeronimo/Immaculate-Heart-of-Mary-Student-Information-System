<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="FinalGrade.aspx.cs" Inherits="Admin_Admission_StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user"></i>
    <asp:Literal ID="ltSID" runat="server" Visible="false" />
    Final Grades
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <%--    DAN MARVIN GERONIMO--%>

    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                            <table class="table table-hover">

                                <thead>
                                    <th>Subject</th>
                                    <th>Grade</th>



                                </thead>

                                <tbody>
                                    <asp:ListView ID="lvStudents" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <asp:Literal ID="ltGradeID" runat="server"
                                                    Text='<%# Eval("Grade_ID") %>' Visible="false" />

                                                <td><%#Eval("Subject_Name") %></td>
                                                <td><%#Eval("Grade_Value") %></td>
                                                <td></td>


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

