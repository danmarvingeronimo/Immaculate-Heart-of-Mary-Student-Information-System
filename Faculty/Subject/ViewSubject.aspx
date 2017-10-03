<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="ViewSubject.aspx.cs" Inherits="Subject_ViewSubject" %>

<%--<Nathaniel Collins S. Ortiz>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-book">Subject</i>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
         <asp:Button ID="btnRedirect" runat="server"
         PostBackUrl="AddSubject.aspx" Text="Add"  />
<table class="table table-hover">
    <thead>
        <th>Subject ID</th>
        <th>Subject Name</th>
        <th>Subject Description</th>
        <th>Identity Code</th>
        <th>Time Stamp</th>
        <th>User ID</th>
    </thead>
    <tbody>
        <asp:ListView ID="lvSubject" runat="server"
             OnItemCommand="lvSubject_ItemCommand"
             OnPagePropertiesChanging="lvSubject_PagePropertiesChanging"
             OnItemDataBound="lvSubject_ItemDataBound">
            <ItemTemplate>
                <tr>
                      <td>
                        <asp:Literal ID="ltSubjectID" runat="server"
                            Text='<%# Eval("Subject_ID") %>' Visible="true" />               
                    </td>
                    <td><%# Eval("Subject_Name") %></td>
                    <td><%# Eval("Subject_Desc") %></td>
                    <td><%# Eval("Identity_Code") %></td>
                    <td><%# Eval("Time_Stamp", "{0: MM/dd/yyyy}") %></td>
                    <td><%# Eval("User_ID") %></td>
                    <td>
                      <asp:LinkButton ID="btnUpdate" runat="server"
                            class="btn btn-xs btn-info" CommandName="updatesub">
                            <i class="fa fa-refresh"></i>
                        </asp:LinkButton>
                      <  <a href= 'SubjectDetails.aspx?ID=<%#Eval("Subject_ID") %>'
                            class="btn btn-xs btn-info" title="View Subject Details">
                            <i class="fa fa-edit"></i>
                        </a>
                        <asp:LinkButton ID="btnDelete" runat="server"
                            class="brn btn-xs btn-danger" CommandName="delsub">
                            <i class="fa fa-remove"></i>
                        </asp:LinkButton>
                        <a href='SubjectList.aspx?ID=<%#Eval("Identity_Code") %>'
                            class="btn btn-xs btn-info" title="View list">
                            <i class="fa fa-pagelines"></i>
                        </a>
                    </td>
                </tr>
              
            </ItemTemplate>
            <EmptyDataTemplate>
                <tr>
                    <td colspan="10">
                        <h2 class="text-center">
                            no records found
                        </h2>
                    </td>
                </tr>
            </EmptyDataTemplate>
        </asp:ListView>
    </tbody>
</table>
    </form>

        <div class="list-group">
  <a href="Grade1subjectList.aspx" class="list-group-item">Grade One</a>
  <a href="Grade2subjectList.aspx" class="list-group-item">Grade Two</a>
  <a href="Grade3subjectList.aspx" class="list-group-item">Grade Three</a>
  <a href="Grade4subjectList.aspx" class="list-group-item">Grade Four</a>
  <a href="Grade5subjectList.aspx" class="list-group-item">Grade Five</a>
  <a href="Grade6subjectList.aspx" class="list-group-item">Grade Six</a>
            </div>

        </form>

</asp:Content>

