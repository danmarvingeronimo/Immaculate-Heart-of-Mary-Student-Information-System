<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="ViewSubject.aspx.cs" Inherits="Subject_ViewSubject" %>

<%--<Nathaniel Collins S. Ortiz>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Student List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    <th>Subject_ID</th>
                    <th>Subject_Name</th>
                    <th>Subject_Desc</th>
                  
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvSubject" runat="server"
                        OnItemCommand="lvSubject_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                 <td>
                                 <asp:Literal ID="ltSubjectID" runat="server"
                                  Text='<%# Eval("Subject_ID") %>' Visible="true" />               
                                 </td>
                       
                                <td><%#Eval("Subject_Name") %></td>
                                <td><%#Eval("Subject_Desc") %></td>   
                                <td>
                                <asp:LinkButton ID="btnDelete" runat="server"
                                 class="brn btn-xs btn-danger" CommandName="delsub">
                                <i class="fa fa-remove"></i>
                                </asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <tr>
                                <td colspan="10">
                                    <h2 class="text-center">
                                        No records found!
                                    </h2>
                                </td>
                            </tr>
                        </EmptyDataTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </form>

</asp:Content>

