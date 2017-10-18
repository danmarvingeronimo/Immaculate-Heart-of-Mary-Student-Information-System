<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="FacultyList.aspx.cs" Inherits="Faculty" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-users">Faculty</i> 
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
          
       <div class ="col-lg-12">
           
           <div>
            <a href='AddFaculty.aspx'
             class="btn btn-xs btn-default" title="Add Subject">
              <i class="fa fa-plus"></i>
             </a>
        </div>
           
           <table class="table table-hover">
               <thead>
                   <th>User ID</th>
                   <th>Last Name</th>
                   <th>First Name</th>
                   <th>Middle Name</th>
               </thead>
               <tbody>
                   <asp:ListView ID="lvFaculty" runat="server" OnItemCommand="lvFaculty_ItemCommand" OnPagePropertiesChanging="lvFaculty_PagePropertiesChanging" OnItemDataBound="lvFaculty_ItemDataBound">
                       <ItemTemplate>
                           <tr>
                               <asp:Literal ID="ltTeacherID" runat="server"
                                  Text='<%# Eval("Teacher_ID") %>' Visible="false" />
                               <td><%# Eval("User_ID") %></td>
                               <td><%# Eval("Teacher_LastName") %></td>
                               <td><%# Eval("Teacher_FirstName") %></td>
                               <td><%# Eval("Teacher_MiddleName") %></td>
                               <td>
                                   <a href='FacultyDetails.aspx?ID=<%#Eval("Teacher_ID")%>'
                                     class="btn btn-xs btn-info" title="View Faculty Details">
                                    <i class="fa fa-edit"></i>
                                   </a>
                                    <asp:LinkButton ID="btnDelete" runat="server"
                                         class="btn btn-xs btn-danger" CommandName="delTeach">
                                         <i class="fa fa-remove"></i>
                                    </asp:LinkButton>
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

