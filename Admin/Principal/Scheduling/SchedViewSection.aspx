﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="SchedViewSection.aspx.cs" Inherits="Section_ViewSection" %>

<%--JIONNE LIZARDO --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
      <div class="row">
        <div class="col-lg-10 col-lg-offset-1">
            <div class="box">
                <div class="box-body">
                    <h1><i class="fa fa-book"></i>Sections</h1>
                    <form runat="server">


                        <table class="table table-hover">
                            <thead>
                                <tr>
                                <th>Section Name</th>
                                <th>Grade</th>
                                 <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:ListView ID="lvSection" runat="server">
                                    <ItemTemplate>
                                        <tr>


                                            <td><%# Eval("Section_Name") %></td>
                                            <td><%# Eval("Year_Level") %></td>
                                            <td>
                                                <%--<asp:LinkButton ID="btnUpdate" runat="server"
                            class="btn btn-xs btn-info" CommandName="updatesec">
                            <i class="fa fa-refresh"></i>
                        </asp:LinkButton>--%>
                                                <a href='Schedule.aspx?ID=<%#Eval("Section_ID")%>'
                                                    class="btn btn-xs btn-info" title="View Schedule">
                                                    <i class="fa fa-edit"></i>
                                                </a>

                                            </td>

                                        </tr>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        <tr>
                                            <td colspan="10">
                                                <h2 class="text-center">no records found
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
</asp:Content>