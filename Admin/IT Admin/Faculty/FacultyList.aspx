<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="FacultyList.aspx.cs" Inherits="Faculty" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-users">Faculty</i> 
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
          
       <div class ="col-lg-12">
           <table class="table table-hover">
               <thead>
                   <th>Full Name</th>
                   <th>User ID</th>
               </thead>
               <tbody>
                   <asp:ListView ID="lvFaculty" runat="server" OnItemCommand="lvFaculty_ItemCommand" OnPagePropertiesChanging="lvFaculty_PagePropertiesChanging" OnItemDataBound="lvFaculty_ItemDataBound">
                       <ItemTemplate>
                           <tr>
                               <asp:Literal ID="ltTeacherID" runat="server"
                                  Text='<%# Eval("Teacher_ID") %>' Visible="false" />
                               
                               <td><%# Eval("Teacher Name") %></td>
                               <td><%# Eval("User_ID") %></td>
                               <td>
                                   <a href='EditFacultyUIDPW.aspx?ID=<%#Eval("Teacher_ID")%>'
                                     class="btn btn-xs btn-info" title="Edit User ID/Password">
                                    <i class="fa fa-edit"></i>
                                   </a>
                                    
                               </td>
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

