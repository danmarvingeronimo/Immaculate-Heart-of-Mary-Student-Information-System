﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master"AutoEventWireup="true" CodeFile="ViewSubject.aspx.cs" Inherits="Subject_ViewSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    

<%--    JIONNE LIZARDO --%>

     <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">
                            <h1><i class="fa fa-users" style="margin-bottom: 20px;"></i>View Subjects</h1>
                            <table id="table" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Subject Name</th>
                                        <th>Description</th>
                                        <th>Teacher</th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <asp:ListView ID="lvSubject" runat="server" OnitemCommand="lvSubject_ItemCommand">
                                        <ItemTemplate>
                                            <tr>


                                                <td><%#Eval("Subject_Name") %></td>
                                                <td><%#Eval("Subject_Desc") %></td>
                                                <td><%#Eval("Teacher Name") %></td>
                                                <td>
                                                    <a href='AssignFacSubj.aspx?ID=<%#Eval("Subject_ID")%>'
                                                        class="btn btn-xs btn-info" title="Assign Subject">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                </td>
                                            </tr>

                                        </ItemTemplate>
                                        <EmptyDataTemplate>
                                            <tr>
                                                <td colspan="10">
                                                    <h2 class="text-center">No records found!
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

