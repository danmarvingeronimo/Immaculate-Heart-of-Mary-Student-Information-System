<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="RegViewSection.aspx.cs" Inherits="Section_ViewSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>

<%-- JIONNE LIZARDO --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                            <h1><i class="fa fa-child" style="margin-bottom: 20px;"></i>Sections</h1>


                            <table id="table" class="table table-hover">
                                <thead>

                                    <th>Section Name</th>
                                    <th>Grade</th>
                                    <th></th>

                                </thead>
                                <tbody>
                                    <asp:listview id="lvSection" runat="server" onitemcommand="lvSection_ItemCommand">
                               <ItemTemplate>
                                    <tr>

                    
                    <td><%# Eval("Section_Name") %></td>
                    <td><%# Eval("Year_Level") %></td>
                    <td>
                        <%--<asp:LinkButton ID="btnUpdate" runat="server"
                            class="btn btn-xs btn-info" CommandName="updatesec">
                            <i class="fa fa-refresh"></i>
                        </asp:LinkButton>--%>
                        <a href='CompleteStudentList.aspx?ID=<%#Eval("Section_ID")%>'
                            class="btn btn-xs btn-info" title="View Schedule">
                            <i class="fa fa-edit"></i>
                        </a>
                        
                    </td>
                
                </tr>
            </ItemTemplate>
            <EmptyDataTemplate>
                <tr>
                    <td colspan="10">
                        <h2 class="text-center">
                            no records found
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

