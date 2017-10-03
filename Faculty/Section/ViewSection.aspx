<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="ViewSection.aspx.cs" Inherits="Section_ViewSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
<i class="fa fa-book">Sections</i>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <asp:Button ID="btnRedirect" runat="server"
         PostBackUrl="AddSection.aspx" Text="Add" OnClick="btnRedirect_Click" />
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
                   <th>Section ID</th>
                   <th>Section Name</th>
                   <th>Year Level</th>
               </thead>
    <tbody>
        <asp:ListView ID="lvSection" runat="server"
             OnItemCommand="lvSection_ItemCommand" OnPagePropertiesChanging="lvSection_PagePropertiesChanging"
             OnItemDataBound="lvSection_ItemDataBound">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Literal ID="ltSectionID" runat="server"
                            Text='<%# Eval("Section_ID") %>' Visible="true" />               
                    </td>
                    <td><%# Eval("Section_Name") %></td>
                    <td><%# Eval("Time_Stamp", "{0: MM/dd/yyyy}") %></td>
                    <td><%# Eval("User_ID") %></td>
                    <td><%# Eval("Year_Level") %></td>
                    <td>
                        <%--<asp:LinkButton ID="btnUpdate" runat="server"
                            class="btn btn-xs btn-info" CommandName="updatesec">
                            <i class="fa fa-refresh"></i>
                        </asp:LinkButton>--%>
                        <a href='SectionDetails.aspx?ID=<%#Eval("Section_ID")%>'
                            class="btn btn-xs btn-info" title="View Section Details">
                            <i class="fa fa-edit"></i>
                        </a>
                        <asp:LinkButton ID="btnDelete" runat="server"
                            class="brn btn-xs btn-danger" CommandName="delsec">
                            <i class="fa fa-remove"></i>
                        </asp:LinkButton>
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

        <a href="AddSection.aspx"
            class="btn btn-submit" title="Add New Section">
            <i class="fa fa-edit"></i>
        </a>
   <%-- <div class=" col-lg-offset-5">
        <asp:DataPager ID="dpSection" runat="server"
             PagedControlID="lvSection"  PageSize="10">
            <Fields>
                <asp:NumericPagerField
                     ButtonType="Button"
                     CurrentPageLabelCssClass="btn btn-success"
                     NumericButtonCssClass="btn btn-default"
                     NextPreviousButtonCssClass="btn btn-default"
                     ButtonCount="5" />
            </Fields>
        </asp:DataPager>
    </div>--%>
    </form>
    
   
</asp:Content>

