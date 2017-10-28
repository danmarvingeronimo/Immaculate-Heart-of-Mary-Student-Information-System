<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewGrade.aspx.cs" Inherits="Admin_Admission_StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-user"></i>
    <asp:Literal ID="ltSID" runat="server"  Visible="false"/> 1st Quarter Grades
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
       <div class="col-lg-12">
           <asp:button id="btnRedirect" runat="server"
               postbackurl="StudentList.aspx" text="Back" onclick="btnRedirect_Click" />
            <table class ="table table-hover">
                <thead>
                    <th>Subject</th>
                    <th>Grade</th>
                    <th>Quarter</th>



                </thead>

                <tbody>
                    <asp:listview id="lvStudents" runat="server" OnItemCommand="lvStudents_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <asp:Literal ID="ltGradeID" runat="server"
                                  Text='<%# Eval("Grade_ID") %>' Visible="false" />
                                
                                <td><%#Eval("Subject_Name") %></td>
                                <td><%#Eval("Grade_Value") %></td>
                                <td><%#Eval("Quarter") %></td>
                                <td>
                                    <a href='EditGrade.aspx?ID=<%#Eval("Grade_ID")%>'
                                        class="btn btn-xs btn-warning" title="Edit Grade">
                                        <i class="fa fa-exclamation"></i>
                                    </a>
                                    <asp:LinkButton ID="btnDelete" runat="server"
                                     class="btn btn-xs btn-danger" CommandName="delfile">
                                         <i class="fa fa-remove"></i>
                                     </asp:LinkButton>
                               

                                </td>
                                
                                
                            </tr>
                           
                        </asp:LinkButton>
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

