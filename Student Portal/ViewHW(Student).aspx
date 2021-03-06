﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student Portal/Student.master" AutoEventWireup="true" CodeFile="ViewHW(Student).aspx.cs" Inherits="Student_Portal_ViewHW_Student_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-book"></i>Assignments
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
     <ol class="breadcrumb">
        <li><a href="Homepage.aspx"><i class="fa fa-dashboard"></i> Homepage</a></li>
        <li><a href="ViewSubject.aspx"><i class="fa fa-dashboard"></i> View Subject</a></li>
        <li class="active"> Homework List</li>
      </ol>

    <form runat="server" class="form-horizontal">
        <table class="table table-hover">
            <thead>
                <th>Title</th>
                <th>File</th>
                <th>Description</th>
                <th>Date Added</th>
                <th>Uploaded By</th> 
            </thead>
        <tbody>
            <asp:ListView ID="lvHW" runat="server"
                OnItemCommand="lvHW_ItemCommand"
                 OnPagePropertiesChanging="lvHW_PagePropertiesChanging"
                 OnItemDataBound="lvHW_ItemDataBound">
                <ItemTemplate>
                    <tr>
                         <asp:Literal ID="ltUploadHW_ID" runat="server"
                            Text='<%# Eval("UploadHW_ID") %>' Visible="false" />               
                    
                    <td><%# Eval("Title") %></td>
                     <td>
                        <img id="Img1" runat="server" src='<%#string.Concat("../img/files/", Eval("FileContent")) %>' class="img-responsive" width="100" />
                        <a href="<%# string.Concat("../img/files/", Eval("FileContent"))%>" download >HW </a>
                    </td>
                    <td><%# Eval("Description") %></td>
                    
                    <td><%# Eval("DateAdded", "{0: MMMM dd, yyyy}") %></td>
                    <td><%# Eval("Teacher") %></td>
                    </tr>
                   
                </ItemTemplate>
                  <EmptyDataTemplate>
                <tr>
                    <td colspan="10">
                        <h2 class="text-center">
                            No records found
                        </h2>
                    </td>
                </tr>
            </EmptyDataTemplate>
            </asp:ListView>
        </tbody>
        </table>
    </form>
</asp:Content>

