<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Accounting/Accounting.master" AutoEventWireup="true" CodeFile="AccViewSection.aspx.cs" Inherits="Section_ViewSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-book"></i> Sections
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <div class="container-fluid" style="padding-bottom: 20px;">

         <ol class="breadcrumb">
            <li><a href="~/Admin/Accounting/Accounting_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i> Home</a></li>
            <li class="active">Sections</li>
        </ol>


        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                            <table id="table" class="table table-hover">
                                <thead>

                                    <th>Section Name</th>
                                    <th>Grade</th>
                                    <th></th>
                                </thead>
                                <tbody>
                                    <asp:ListView ID="lvSection" runat="server" OnItemCommand="lvSection_ItemCommand">
                                        <ItemTemplate>
                                            <tr>


                                                <td><%# Eval("Section_Name") %></td>
                                                <td><%# Eval("Year_Level") %></td>
                                                <td>
                                                    <%--<asp:LinkButton ID="btnUpdate" runat="server"
                            class="btn btn-xs btn-info" CommandName="updatesec">
                            <i class="fa fa-refresh"></i>
                        </asp:LinkButton>--%>
                                                    <a href='StudentList.aspx?ID=<%#Eval("Section_ID")%>'
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
    </div>

</asp:Content>

