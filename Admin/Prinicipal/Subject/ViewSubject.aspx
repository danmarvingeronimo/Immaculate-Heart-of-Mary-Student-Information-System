<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewSubject.aspx.cs" Inherits="Subject_ViewSubject" %>

<%--<Nathaniel Collins S. Ortiz>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Subject List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    
                    <th>Subject Name</th>
                    <th>Description</th>
                    <th>Teacher</th>
                  
                    
                </thead>
                <tbody>
                     <asp:ListView ID="lvSubject" runat="server" OnItemCommand="lvSubject_ItemCommand" OnPagePropertiesChanging="lvSubject_PagePropertiesChanging" OnItemDataBound="lvSubject_ItemDataBound">
                        <ItemTemplate>
                            <tr>
                                 
                       
                                <td><%#Eval("Subject_Name") %></td>
                                <td><%#Eval("Subject_Desc") %></td>   
                                <td><%#Eval("Teacher Name") %></td>   

                                <td>
                                <a href='AssignFacSubj.aspx?ID=<%#Eval("Subject_ID")%>'
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
                                        No records found!
                                    </h2>
                                </td>
                            </tr>
                        </EmptyDataTemplate>
                    </asp:ListView>
                </tbody>
            </table>
             <div class="col-lg-offset-5">

               <asp:DataPager ID="dpSubject" runat="server"
                    PagedControlID="lvSubject" PageSize="10">
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

