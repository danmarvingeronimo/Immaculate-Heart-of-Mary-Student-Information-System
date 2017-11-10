<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="AuditFaculty.aspx.cs" Inherits="Admin_IT_Admin_Admin_Audit_Log_AuditAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Audit Logs
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="container-fluid" style="padding-bottom: 20px;">

        <ol class="breadcrumb">
            <li><a href="~/Admin/Principal/Principal_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i> Home</a></li>
            <li class="active">Audit Faculty</li>
        </ol>

        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <table id="table" class="table table-hover table-bordered">
                            <thead>
                                <th>Audit ID</th>
                                <th>Time Stamp</th>
                                <th>Title</th>
                                <th>Description</th>
                            </thead>
                            <tbody>
                                <asp:listview id="lvAudit" runat="server" onitemdatabound="lvAudit_ItemDataBound"
                                    onpagepropertieschanging="lvAudit_PagePropertiesChanging"
                                    onitemcommand="lvAudit_ItemCommand">
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
                        </asp:listview>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

