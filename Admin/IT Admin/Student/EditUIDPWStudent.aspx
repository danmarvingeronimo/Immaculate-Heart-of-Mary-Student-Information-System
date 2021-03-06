﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master"AutoEventWireup="true" CodeFile="EditUIDPWStudent.aspx.cs" Inherits="TeacherPortal_Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa  fa-book"></i>
     <asp:Literal ID="ltSID" runat="server" visible="true"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class=" form-horizontal">
        <div class="col-lg-6">

      <div class="form-group">
                <label class="control-label col-lg-4">User ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUID" runat="server" class="form-control" minlength="10" type="text"  />
                </div>
            </div>

        <div class="form-group">
            <label class="control-label col-lg-4">Password</label>
            <div class="col-lg-8">
                <asp:textbox id="txtPWD" runat="server" class="form-control" type="password" minlength="8" MaxLength="20" />
            </div>
        </div>

                <div class="form-group">
                <label class="control-label col-lg-4">Repeat Password</label>
                <div class="col-lg-8">
                    <asp:textbox id="TxtRepPass" runat="server"
                        class="form-control" type="password" minlength="8" maxlength="20" required />
                    <asp:comparevalidator id="comparePasswords"
                        runat="server"
                        controltocompare="txtPWD"
                        controltovalidate="txtRepPass"
                        errormessage="Incorrect Password!"
                        forecolor="red" />

                </div>
            </div>

            
           <div class="form-group">
               <div class="col-lg-offset-4 col-lg-8">
                   <asp:Button ID="btnUpdate" runat="server"
                       class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                   <a href="CompleteStudentList.aspx" class="btn btn-default">
                       Back to View
                   </a>
               </div>
           </div>
       </div>
    </form>
</asp:Content>


