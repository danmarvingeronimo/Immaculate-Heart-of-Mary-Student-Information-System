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
                    
                    <th>Daye</th>
                    <th>Time Slot</th>
                    <th>Section</th>
                    <th>Subject Name</th>
                    <th>Teacher</th>
                  
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvSched" runat="server"
                        OnItemCommand="lvSched_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                
                       
                                <td><%#Eval("Day_Schedule") %></td>
                                <td><%#Eval("Timeslot") %></td>
                                <td><%#Eval("Grade Section") %></td>
                                
                                <td><%#Eval("Subject_Name") %></td>
                                <td><%#Eval("Teacher") %></td>

<%--                                <td><%#Eval("Subject") %></td>--%>
                                <td>
                                  <a href='SchedDetails.aspx?ID=<%#Eval("ScheduleID")%>'
                                      class="btn btn-xs btn-info" title="Add Subject">
                                         <i class="fa fa-edit"></i>
                                 </a>

                                
                                
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

