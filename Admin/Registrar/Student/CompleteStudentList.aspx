﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="CompleteStudentList.aspx.cs" Inherits="Admin_Admission_StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user"></i>
    <asp:Literal ID="ltSID" runat="server" Visible="true" />
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
                            <table id="id" class="table table-hover">
                                <thead>
                                    <th>Student ID #</th>
                                    <th>Last Name</th>
                                    <th>First Name</th>
                                    <th>Middle Name</th>
                                    <th>Status</th>
                                    <th></th>
                                </thead>

                                <tbody>
                                    <asp:ListView ID="lvStudents" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <asp:Literal ID="ltStudentID" runat="server"
                                                    Text='<%# Eval("Student_ID") %>' Visible="false" />
                                                <td><%#Eval("User_ID") %></td>
                                                <td><%#Eval("Last_Name") %></td>
                                                <td><%#Eval("First_Name") %></td>
                                                <td><%#Eval("Middle_Name") %></td>
                                                <td><%#Eval("Status_Desc") %></td>
                                                <td></td>
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

