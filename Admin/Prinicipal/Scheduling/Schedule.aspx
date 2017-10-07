<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Faculty_Scheduling_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title"  Runat="Server">
   <i class="fa fa-user"></i>
    <asp:Literal ID="ltSID" runat="server" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    <th>Schedule ID</th>
                    <th>Day Schedule</th>
                    <th>Time Slot</th>
                    <th>Grade</th>
                    <th>Section</th>
                    <th>Subject Name</th>
                  
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvSched" runat="server"
                        OnItemCommand="lvSched_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                 <td>
                                 <asp:Literal ID="ltScheduleID" runat="server"
                                  Text='<%# Eval("ScheduleID") %>' Visible="true" />               
                                 </td>
                       
                                <td><%#Eval("Day_Schedule") %></td>
                                <td><%#Eval("Timeslot") %></td>
                                <td><%#Eval("Year_level") %></td>
                                <td><%#Eval("Section_Name") %></td>
                                <td><%#Eval("Subject_Name") %></td>

<%--                                <td><%#Eval("Subject") %></td>--%>
                                <td>
                                  <a href='SchedDetails.aspx?ID=<%#Eval("ScheduleID")%>'
                                      class="btn btn-xs btn-info" title="Add Subject">
                                         <i class="fa fa-edit"></i>
                                 </a>

                                </td>

                                <td>
                                <asp:LinkButton ID="btnDelete" runat="server"
                                 class="brn btn-xs btn-danger" CommandName="delsched">
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

