﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Profile/Profile.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="TeacherPortal_Profile_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">     
    <section class="content-header">
      <h1> User Profile </h1>
    </section>
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="~/img/user2-160x160.jpg" height="400" width="400" runat="server" alt="User profile picture"/>
                <h3><asp:Literal ID="ltUID" runat="server" Visible="true" /></h3>
              <p class="text-muted text-center">Software Engineer</p>
            </div>
          </div>

          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">PERSONAL INFO</h3>
            </div>
            <div class="box-body">
              <strong>FULL NAME</strong>
              <p>
                <asp:Label runat="server"  ID="lblFN"><%#Eval("Teacher_FirstName") %></asp:Label>
                <asp:Label runat="server"  ID="lblMN"><%#Eval("Teacher_MiddleName") %></asp:Label>
                <asp:Label runat="server"  ID="lblLN"><%#Eval("Teacher_LastName") %></asp:Label>
               </p>
              <hr />
               <strong>DEPARTMENT</strong>
                <p><asp:Label runat="server" class="col-sm-2 control-label" ID="lblDept"><%#Eval("Department") %></asp:Label></p><br /><br /><br /><br />
                <br /><br /><br /><br /><br />
            </div>
          </div>
        </div>
        <div class="col-md-9">
          <div class="nav-tabs-custom"><br />
  
             <h1 style="margin-left:20px;">
           Update Personal Info
      </h1>
               <form runat="server" class="form-horizontal"><br /><br /><br />

                 <div class="form-group">
                    <label class="control-label col-sm-2">First Name</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="txtFN" runat="server" class="form-control" type="Id" MaxLength="10" required />
                    </div>
                  </div>

                    
                 <div class="form-group">
                    <label class="control-label col-sm-2">Middle Name</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="txtMN" runat="server" class="form-control" type="Id" MaxLength="10" required />
                    </div>
                  </div>

                    
                 <div class="form-group">
                    <label class="control-label col-sm-2">Last Name</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="txtLN" runat="server" class="form-control" type="Id" MaxLength="10" required />
                    </div>
                  </div>

                    
                 <div class="form-group">
                    <label class="control-label col-sm-2">Department</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="txtDept" runat="server" class="form-control" type="Id" MaxLength="10" required />
                    </div>
                  </div>

                      <div class="form-group">
                    <label class="control-label col-sm-2">Password</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="txtPassword" runat="server" class="form-control" type="Password" MaxLength="10" required />
                    </div>
                  </div>

                 <div class="form-group">
                    <div class="col-sm-8">
                       <span class="pull-right">
                    <asp:Button ID="btnUpdate" runat="server" class="btn btn-success" Text="Update" onclick="btnUpdate_Click" />
                           <%-- <asp:Button ID="btnCancel" runat="server" class="btn btn-warning" Text="Cancel" onclick="btnCancel_Click" />--%>
                </span>
                    </div>
                  </div>
               </form><br /><br /><br /><br /><br />
            </div>
        </div>
          </div>
            </section>
</asp:Content>