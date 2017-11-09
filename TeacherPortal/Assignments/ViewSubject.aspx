<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="ViewSubject.aspx.cs" Inherits="Subject_ViewSubject" %>

<%--<Nathaniel Collins S. Ortiz>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Subject List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    
        <ol class="breadcrumb">
        <li><a href="../Homepage.aspx"><i class="fa fa-dashboard"></i> Homepage</a></li>
        <li class="active">Subject List</li>
      </ol>

<%--    DAN MARVIN GERONIMO--%>

   <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    
                    <th>Subject Name</th>
                    <th>Description</th>
                  
                    
                </thead>
                <tbody>
                     <asp:ListView ID="lvSubject" runat="server" OnItemCommand="lvSubject_ItemCommand" OnItemDataBound="lvSubject_ItemDataBound">
                        <ItemTemplate>
                            <tr>
                                 
                       
                                <td><%#Eval("Subject_Name") %></td>
                                <td><%#Eval("Subject_Desc") %></td>   

                                <td>
                                <a href='ViewHW.aspx?ID=<%#Eval("Subject_ID")%>'
                                     class="btn btn-xs btn-info" title="Assign Subject">
                                    <i class="fa fa-edit" ></i>
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
    <br />
</asp:Content>

