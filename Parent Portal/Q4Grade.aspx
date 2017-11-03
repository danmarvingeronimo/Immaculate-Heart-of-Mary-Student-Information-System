<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="Q4Grade.aspx.cs" Inherits="Admin_Admission_StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user"></i>

    <asp:Literal ID="ltSID" runat="server"  Visible="true"/> - 1st Quarter

    <asp:literal id="ltSID" runat="server" visible="true" />
    - 4th Quarter
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <%--    DAN MARVIN GERONIMO--%>

    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                <tbody>
                    <asp:ListView ID="lvStudents" runat="server" OnItemDataBound="lvStudents_ItemDataBound">


                            <div>
                                <br />
                                <a href='CompleteStudentList.aspx'
                                   class="btn btn-xs btn-success">Back to View </a>
                            </div>


                            <table class="table table-hover">
                                <thead>
                                    <th>Subject</th>
                                    <th>Grade</th>



                                </thead>

                                <tbody>
                                    <asp:listview id="lvStudents" runat="server">
                        <ItemTemplate>
                            <tr>
                                <asp:Literal ID="ltGradeID" runat="server"
                                  Text='<%# Eval("Grade_ID") %>' Visible="false" />
                                
                                <td><%#Eval("Subject_Name") %></td>
                                <td><%#Eval("Grade_Value") %></td>
                                <td>
                              									<asp:Label id="GradeVal" runat="server" Text='<%#Eval("Grade_Value") %>' Visible="false"/>

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
                    <tr>
                        <td><b>Average:</b></td>
                        <td>
                            <asp:Label ID="lblave" runat="server" />
                        </td>
                    </tr>
                </tbody>
            </table>
            

                    </asp:listview>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

