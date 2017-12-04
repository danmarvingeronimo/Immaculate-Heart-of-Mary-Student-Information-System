<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="FacultyList.aspx.cs" Inherits="Faculty" %>

<%--JIONNE LIZARDO --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="container-fluid" style="padding-bottom: 20px;">

        <ol class="breadcrumb">
            <li><a href="~/Admin/Principal/Principal_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i>Home</a></li>
            <li class="active">View Faculty</li>
        </ol>

        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                            <h1><i class="fa fa-users" style="margin-bottom: 20px;"></i>Faculty </h1>
                            <div>

                                <a href='AddFaculty.aspx'
                                    class="btn btn-xs btn-default" style="margin-bottom: 20px;" title="Add Subject">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>

                            <table id="table" class="table table-hover">
                                <thead>
                                    <th>Image</th>
                                    <th>Last Name</th>
                                    <th>First Name</th>
                                    <th>Middle Name</th>
                                    <th>Section Name</th>
                                    <th>Adviser</th>
                                    <th></th>
                                </thead>
                                <tbody>
                                    <asp:ListView ID="lvFaculty" runat="server" OnItemCommand="lvFaculty_ItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <asp:Literal ID="ltTeacherID" runat="server"
                                                    Text='<%# Eval("Teacher_ID") %>' Visible="false" />

                                                <td>
                                                    <img id="Img1" runat="server" src='<%# string.Concat("~/img/faculty/", Eval("Image")) %>' class="img-responsive" width="100" /></td>

                                                <td><%# Eval("Teacher_LastName") %></td>
                                                <td><%# Eval("Teacher_FirstName") %></td>
                                                <td><%# Eval("Teacher_MiddleName") %></td>

                                                <asp:Literal ID="ltSectionID" runat="server"
                                                    Text='<%# Eval("Section_ID") %>' Visible="false" />

                                                <td><%# Eval("Section") %></td>
                                                <td><%# Eval("Description") %></td>
                                                <td>
                                                    <a href='AssignFacSec.aspx?ID=<%#Eval("Teacher_ID")%>'
                                                        class="btn btn-xs btn-info" title="View Faculty Details">
                                                        <i class="fa fa-edit"></i>
                                                    </a>

                                                    <asp:LinkButton ID="btnDelete" runat="server"
                                                        class="btn btn-xs btn-danger" CommandName="delTeach">
                                         <i class="fa fa-remove"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton ID="btnRemoveAdviser" runat="server"
                                                        class="btn btn-xs btn-warning" CommandName="delAdv">
                                         <i class="fa fa-exclamation"></i>
                                                    </asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <EmptyDataTemplate>
                                            <tr>
                                                <td colspan="10">
                                                    <h2 class="text-center">no records found!
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


