<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="SchedViewSection.aspx.cs" Inherits="Section_ViewSection" %>

<%--JIONNE LIZARDO --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="container-fluid" style="padding-bottom: 20px;">

        <ol class="breadcrumb">
            <li><a href="~/Admin/Principal/Principal_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i>Home</a></li>
            <li class="active">Section Scheduling</li>
        </ol>


        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <h1><i class="fa fa-book"></i>Section Scheduling</h1>
                        <form runat="server">


                            <table id="table" class="table table-hover">
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

        <div class="form-group text-center">
            <div class=" col-lg-12">
                <asp:Panel ID="add" CssClass="alert alert-success alert-dismissible" Font-Size="Large" runat="server" Visible="false">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <strong>Success!</strong> Subject assigned
                </asp:Panel>
            </div>
        </div>

        <div class="form-group text-center">
            <div class=" col-lg-12">
                <asp:Panel ID="success" CssClass="alert alert-warning alert-dismissible" Font-Size="Large" runat="server" Visible="false">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <strong>Note: </strong>Subject unassigned
                </asp:Panel>
            </div>
        </div>

    </div>
</asp:Content>
