<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="Class.aspx.cs" Inherits="TeacherPortal_Class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-list"></i>Class List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form-horizontal">
        <div>
            <h1><a href="Upload.aspx">Section 1</a></h1>
            <h1><a href="Upload.aspx">Section 2</a></h1>
            <h1><a href="Upload.aspx">Section 3</a></h1>
        </div>
    </form>
</asp:Content>
