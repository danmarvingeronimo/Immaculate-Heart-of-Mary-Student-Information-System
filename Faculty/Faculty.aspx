<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Faculty" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-users">Faculty</i> 
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
          <asp:Button ID="btnRedirect" runat="server"
         PostBackUrl="AddFaculty.aspx" Text="Add" />
       <div class ="col-lg-12">
           <table class="table table-hover">
               <thead>
                   <th>Teacher ID</th>
                   <%--<th>Usertype ID</th>--%>
                   <th>First Name</th>
                   <th>Middle Name</th>
                   <th>Last Name</th>
                   <th>Time Stamp</th>
                   <th>User ID</th>
               </thead>
               <tbody>
                   <asp:ListView ID="lvFaculty" runat="server" OnItemCommand="lvFaculty_ItemCommand" OnPagePropertiesChanging="lvFaculty_PagePropertiesChanging" OnItemDataBound="lvFaculty_ItemDataBound">
                       <ItemTemplate>
                           <tr>
                               <td><%# Eval("Teacher_ID") %></td>
                               <%--<td><%# Eval("UserType_ID") %></td>--%>
                               <td><%# Eval("Teacher_FirstName") %></td>
                               <td><%# Eval("Teacher_MiddleName") %></td>
                               <td><%# Eval("Teacher_LastName") %></td>
                               <td><%# Eval("Time_Stamp", "{0: MM/dd/yyyy}") %></td>
                               <td><%# Eval("User_ID") %></td>
                           </tr>
                       </ItemTemplate>
                       <EmptyDataTemplate>
                           <tr>
                               <td colspan="10">
                                   <h2 class="text-center">
                                       no records found!
                                   </h2>
                               </td>
                           </tr>
                       </EmptyDataTemplate>
                   </asp:ListView>
               </tbody>
           </table>
           <div class="col-lg-offset-5">
               <asp:DataPager ID="dpFaculty" runat="server"
                    PagedControlID="lvFaculty" PageSize="10">
                   <Fields>
                       <asp:NumericPagerField
                            ButtonType="Button"
                            CurrentPageLabelCssClass="btn btn-success"
                            NumericButtonCssClass="btn btn-default"
                            NextPreviousButtonCssClass="btn btn-default"
                            ButtonCount="5" />
                   </Fields>
               </asp:DataPager>
           </div>
          
       </div>
        
    </form>
</asp:Content>

