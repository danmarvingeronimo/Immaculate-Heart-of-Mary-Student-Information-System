<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="GradeViewSection.aspx.cs" Inherits="Section_ViewSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
<i class="fa fa-book">Sections</i>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
      <%-- <div class="col-lg-offset-6">
           <div class="input-group">
               <asp:TextBox ID="txtkeyword" runat="server"
                   class=" form-control" placeholder="......" />
               <span class="input-group-btn">
                   <asp:LinkButton ID="btnSearch" runat="server"
                       class="btn btn-info" OnClick="btnSearch_Click">
                       <i class="fa fa-search"></i>
                   </asp:LinkButton>
               </span>
           </div>
       </div>--%>
    <table class="table table-hover">
               <thead>
                   
                   <th>Section Name</th>
                   <th>Grade</th>
               </thead>
    <tbody>
        <asp:ListView ID="lvSection" runat="server" OnItemCommand="lvSection_ItemCommand" OnPagePropertiesChanging="lvSection_PagePropertiesChanging" OnItemDataBound="lvSection_ItemDataBound">
            <ItemTemplate>
                <tr>

       
                    <td><%# Eval("Section_Name") %></td>
                    <td><%# Eval("Year_Level") %></td>
                    <td>
                        <%--<asp:LinkButton ID="btnUpdate" runat="server"
                            class="btn btn-xs btn-info" CommandName="updatesec">
                            <i class="fa fa-refresh"></i>
                        </asp:LinkButton>--%>
                        <a href='StudentList.aspx?ID=<%#Eval("Section_ID")%>'
                            class="btn btn-xs btn-info" title="View Schedule">
                            <i class="fa fa-edit"></i>
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

       
    <div class=" col-lg-offset-5">
        <asp:DataPager ID="dpSection" runat="server"
             PagedControlID="lvSection"  PageSize="10">
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
    </form>
    
   
</asp:Content>

