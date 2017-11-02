<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="AuditStudent.aspx.cs" Inherits="Admin_IT_Admin_Admin_Audit_Log_Audit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Audit Logs
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="box">
                <h3 class="box-title">Logs</h3>
            </div>
            <div class="box-body">
                <table id="table" class="table table-hover table-bordered">
                    <thead>
                        <th>Audit ID</th>
                        <th>Time Stamp</th>
                        <th>Title</th>
                        <th>Description</th>
                    </thead>
                    <tbody>
                        <asp:ListView ID="lvAudit" runat="server" OnItemDataBound="lvAudit_ItemDataBound"
                             OnPagePropertiesChanging="lvAudit_PagePropertiesChanging"
                              OnItemCommand="lvAudit_ItemCommand">
                            <ItemTemplate>
                                
                                <tr>
                                    <td><%# Eval("Audit_ID") %></td>
                                    <td><%# Eval("Time_Stamp","{0: MMMM dd, yyyy}") %></td>
                                    <td><asp:Label ID="Title" runat="server" Text='<%# Eval("Title") %>' /></td>
                                    <td><asp:Label ID="Description" runat="server" Text='<%# Eval("Description") %>' /></td>
                                </tr>
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <tr>
                    <td colspan="10">
                        <h2 class="text-center">
                            No records found
                        </h2>
                    </td>
                </tr>   
                            </EmptyDataTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

