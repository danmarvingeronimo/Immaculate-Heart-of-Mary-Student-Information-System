<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Admission/Admission.master" AutoEventWireup="true" CodeFile="AdmissionStudList.aspx.cs" Inherits="Admin_Admission_StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Student List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>

                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Last Name</th>
                    <th>Status</th>
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvStudents" runat="server" OnItemCommand="lvStudents_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                
                        <asp:Literal ID="ltStudent_ID" runat="server"
                            Text='<%# Eval("Student_ID") %>' Visible="false" />  
                                
                                <td><%#Eval("First_Name") %></td>
                                <td><%#Eval("Middle_Name") %></td>
                                <td><%#Eval("Last_Name") %></td>
                                <td><%#Eval("Status_Desc") %></td>

                                <td>

                                    <asp:LinkButton ID="btnDelete" runat="server"
                                        class="btn btn-xs btn-green" CommandName="update">
                            <i class="fa fa-edit"></i>
                                    </asp:LinkButton>

                                </td>
                                <%--<td>
                                    <img src='../../content/img/products/<%#Eval("Image") %>'
                                        width="150" />
                                </td>--%>
                                
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

