<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Faculty_Scheduling_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user"></i>
    <asp:literal id="ltSID" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <%--    JIONNE LIZARDO --%>

    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">

                            <a href="SchedViewSection.aspx" style="margin-bottom: 20px;" class="btn btn-success">Back to Section List
                            </a>
                            <table class="table table-hover">
                                <thead>

                                    <th>Day</th>
                                    <th>Time Slot</th>
                                    <th>Section</th>
                                    <th>Subject Name</th>
                                    <th>Teacher</th>
                                    <th></th>


                                </thead>
                                <tbody>
                                    <asp:listview id="lvSched" runat="server"
                                        onitemcommand="lvSched_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <asp:Literal ID="ltSubjectID" runat="server"
                                    Text='<%#Eval("ScheduleID") %>' Visible="false" />
                       
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
                                    <asp:LinkButton ID="btnEmptySubject" runat="server"
                                        class="btn btn-xs btn-danger" CommandName="emptysub">
                                        <i class="fa fa-exclamation"></i>
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
                    </asp:listview>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-offset-4 col-lg-4">
            <asp:Label ID="success" class="col-lg-4" ForeColor="Green" runat="server" Visible="false">
                <strong>Success!</strong> Subject unassigned
            </asp:Label>
        </div>
    </div>

</asp:Content>

