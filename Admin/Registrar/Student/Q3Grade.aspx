<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="Q3Grade.aspx.cs" Inherits="Admin_Admission_StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user"></i>
<<<<<<< HEAD
    <asp:Literal ID="ltSID" runat="server"  Visible="true"/> - 1st Quarter
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    <th>Subject</th>
                    <th>Grade</th>
                    

                    
                </thead>

                <tbody>
                    <asp:ListView ID="lvStudents" runat="server" OnItemDataBound="lvStudents_ItemDataBound">
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
            
=======
    <asp:literal id="ltSID" runat="server" visible="true" />
    - 3rd Quarter
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <%--    DAN MARVIN GERONIMO--%>

    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">

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
                                                <td></td>


                                            </tr>
                                        </ItemTemplate>
                                        <EmptyDataTemplate>
                                            <tr>
                                                <td colspan="10">
                                                    <h2 class="text-center">No records found!
                                                    </h2>
                                                </td>
                                            </tr>
                                        </EmptyDataTemplate>
                                    </asp:listview>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
>>>>>>> bbfa7b82eb5969c6660e7cbdc60a986c87987dd4
        </div>
    </div>



</asp:Content>

