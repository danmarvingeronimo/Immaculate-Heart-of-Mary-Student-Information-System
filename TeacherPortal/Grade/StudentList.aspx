<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="StudentList.aspx.cs" Inherits="Admin_Admission_StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-user"></i>
    <asp:Literal ID="ltSID" runat="server"  Visible="true"/> Student List
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
                    
                </thead>

                <tbody>
                    <asp:ListView ID="lvStudents" runat="server" OnPagePropertiesChanging="lvStudents_PagePropertiesChanging" OnItemDataBound="lvStudents_ItemDataBound">
                        <ItemTemplate>
                            <tr>
                                <asp:Literal ID="ltStudentID" runat="server"
                                  Text='<%# Eval("Student_ID") %>' Visible="false" />
                                <td><%#Eval("First_Name") %></td>
                                <td><%#Eval("Middle_Name") %></td>
                                <td><%#Eval("Last_Name") %></td>
                                <td>
<<<<<<< HEAD:TeacherPortal/Grade/StudentList.aspx
                                    <a href='AddGrade.aspx?ID=<%#Eval("Student_ID")%>'
                                        class="btn btn-xs btn-info" title="View Schedule">
                                        <i class="fa fa-edit"></i>
                                    </a>
=======
                                    <a href='UpdateStudents.aspx?ID=<%#Eval ("Student_ID") %>'
                                        class="btn btn-xs btn-info" title="Student Details">
                                        <i class="fa fa-edit"></i>
                                    </a>
                               <asp:LinkButton ID="btnUpdate" runat="server"
                                         class="btn btn-xs btn-success" CommandName="updatestat">
                                         <i class="fa fa-remove"></i>
                                    </asp:LinkButton>
>>>>>>> 03f515eb72cf49ead7d62e14be3383ec8d6db615:Admin/Registrar/StudentList.aspx

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
            <div class="col-lg-offset-5">
               <asp:DataPager ID="dpStudents" runat="server"
                    PagedControlID="lvStudents" PageSize="10">
                   <Fields>
                       <asp:NumericPagerField
                     ButtonType="Button"
                     CurrentPageLabelCssClass="btn btn"
                     NumericButtonCssClass="btn btn"
                     NextPreviousButtonCssClass="btn btn-default"
                     ButtonCount="5" />
                   </Fields>
               </asp:DataPager>
           </div>
        </div>
    </form>

</asp:Content>

