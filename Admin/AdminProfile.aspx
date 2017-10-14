<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminProfile.aspx.cs" Inherits="Admin_AdminProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-user"></i>Welcome to your Admin Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <h2>UserID: <asp:Label runat="server" ID="User_ID"><%#Eval("ADMIN_MAIN.User_ID") %></asp:Label><br />
        First Name: <asp:Label runat="server" ID="First_Name"><%#Eval("ADMIN_MAIN.First_Name") %></asp:Label><br />
        Middle Name:<asp:Label runat="server" ID ="Middle_Name"><%#Eval("ADMIN_MAIN.Middle_Name") %></asp:Label><br />
        Last Name:<asp:Label runat="server" ID="Last_Name"><%#Eval("ADMIN_MAIN.Last_Name") %></asp:Label><br />
        User Description:<asp:Label runat="server" ID="User_Desc"><%#("USER_TYPE.Usertype_Desc") %></asp:Label><br />

    </h2>
</asp:Content>

