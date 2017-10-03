<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Please select a User Type
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
       <<div class="list-group">
  <a href="Student/LogIn.aspx" class="list-group-item">Student</a>
  <a href="#" class="list-group-item">Faculty</a>
  <a href="Parent/LogIn.aspx" class="list-group-item">Parent</a>
  <a href="Admin/LogIn.aspx" class="list-group-item">Admin</a>

</div>
    </form>
</asp:Content>
