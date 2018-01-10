<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="StudentList.aspx.cs" Inherits="Admin_Admission_StudentList" %>

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
                  
            
                               
                                  <a href='AddGrade.aspx?ID=<%#Eval("Student_ID")%>'
                                                        class="btn btn-xs btn-info" title="Add Grade">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                 
                
                                </td>


                                
                                <%--<td>
                                    <img src='../../content/img/products/<%#Eval("Image") %>'
                                        width="150" />
                                </td>--%>
                                
                            </tr>
                        </ItemTemplate>

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

