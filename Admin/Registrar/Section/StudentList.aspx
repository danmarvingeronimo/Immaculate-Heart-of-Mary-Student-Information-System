<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="StudentList.aspx.cs" Inherits="Admin_Admission_StudentList" %>



<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Student List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    <th>Student ID #</th>
                    <th>Year Level</th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Status</th>
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvStudents" runat="server" OnPagePropertiesChanging="lvStudents_PagePropertiesChanging">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("User_ID") %></td>
                                <td><%#Eval("Year_level") %></td>
                                <td><%#Eval("Last_Name") %></td>
                                <td><%#Eval("First_Name") %></td>
                                <td><%#Eval("Middle_Name") %></td>
                                <td><%#Eval("Status_Desc") %></td>
                                <td>

                               <a href='AssignStudentSection.aspx?ID=<%#Eval("Student_ID")%>'
                                      class="btn btn-xs btn-info" title="View Payment Details">
                                         <i class="fa fa-edit"></i>
                                 </a>

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

