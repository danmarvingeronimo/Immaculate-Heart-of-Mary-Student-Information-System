<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master"AutoEventWireup="true" CodeFile="ViewSection.aspx.cs" Inherits="Section_ViewSection" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
  <div class="container-fluid" style="padding-bottom: 20px;">


      
    <ol class="breadcrumb">
        <li><a href="~/Admin/Registrar/Registrar_index.aspx" runat="server"><i class="fa fa fa-dashboard"></i> Home</a></li>
        <li class="active">Sections</li>
    </ol>

        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                            <h1><i class="fa fa-child" style="margin-bottom: 20px;"></i>Sections</h1>
                            <div>
                                <a href='AddSection.aspx'
                                    class="btn btn-xs btn-default" style="margin-bottom: 20px;" title="Add Subject">
                                    <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <table id="table" class="table table-hover">
                                <thead>

                                    <th>Section Name</th>
                                    <th>Grade Level</th>
                                    <th></th>
                                </thead>
                                <tbody>
                                    <asp:ListView ID="lvSection" runat="server"
                                        OnItemCommand="lvSection_ItemCommand">
                                        <ItemTemplate>
                                            <tr>

                                                <td><%# Eval("Section_Name") %></td>
                                                <td><%# Eval("Year_Level") %></td>
                                                <td>

                                                    <a href='SectionDetails.aspx?ID=<%#Eval("Section_ID")%>'
                                                        class="btn btn-xs btn-info" title="View Section Details">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                    <asp:LinkButton ID="btnDelete" runat="server"
                                                        class="btn btn-xs btn-danger" CommandName="delsec">
                            <i class="fa fa-remove"></i>
                                                    </asp:LinkButton>
                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                        <EmptyDataTemplate>
                                            <tr>
                                                <td colspan="10">
                                                    <h2 class="text-center">no records found
                                                    </h2>
                                                </td>
                                            </tr>
                                        </EmptyDataTemplate>
                                    </asp:ListView>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



