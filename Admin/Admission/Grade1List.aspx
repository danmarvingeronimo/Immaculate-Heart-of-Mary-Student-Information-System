<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admission/Admission.master" AutoEventWireup="true" CodeFile="Grade1List.aspx.cs" Inherits="Admin_Admission_Grade1List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
   Grade One Section List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    
   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    <th>#</th>
                    <th>Section Name</th>
                    
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvStudents" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Section_ID") %></td>
                                <td><%#Eval("Section_Name") %></td>
                                
                                <td>
                                <asp:LinkButton runat="server" id="ViewStudentList" href="StudentList.aspx" CssClass="btn btn-info btn-xs">View Student List</asp:LinkButton>

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

