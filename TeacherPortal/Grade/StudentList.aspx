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
                    <th>Grade</th>
                    <th></th>
                    
                </thead>

                <tbody>
                    <asp:ListView OnItemCommand="lvStudents_ItemCommand" ID="lvStudents" runat="server" OnPagePropertiesChanging="lvStudents_PagePropertiesChanging" OnItemDataBound="lvStudents_ItemDataBound">
                        <ItemTemplate> 
                            <tr>
                                <asp:Literal ID="ltStudentID" runat="server"
                                  Text='<%# Eval("Student_ID") %>' Visible="false" />
                                <td><%#Eval("First_Name") %></td>
                                <td><%#Eval("Middle_Name") %></td>
                                <td><%#Eval("Last_Name") %></td>
                                <td>  <asp:TextBox ID="txtGrade" class="form-control" runat="server" ></asp:TextBox> </td>
                                <td> <asp:dropdownlist id="ddlSubject" runat="server" CommandName="subject" Visible="false"
                         class="form-control" required /></td>
                                <td>  <asp:LinkButton ID="btnSave" runat="server" CommandName="saveGrades
                                    " class="btn btn-success"><i class="fa fa-save"></i></asp:LinkButton> </td>
                       
                                <%--<td>
                                    <img src='../../content/img/products/<%#Eval("Image") %>'
                                        width="150" />
                                </td>--%>
                                
                            </tr>
                        </ItemTemplate>

                    </asp:ListView>
                </tbody>
            </table>
              <div class="form-group">
                <div class="col-lg-offset-4 col-lg-12">
                    <asp:Button ID="btnUpload" runat="server"
                        class="btn btn-success" Text="Upload"
                        onClick="btnUpload_Click" />
                </div>
            </div>
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

