﻿<%@ Page Title="" Language="C#"  MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="EditGrade.aspx.cs" Inherits="TeacherPortal_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
<i class="fa fa-book"></i>
     <asp:Literal ID="ltSID" runat="server"  Visible="true"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form form-horizontal">
         <div class="col-lg-6">

            

            <div class="form-group">
                 <label class="control-label col-lg-4">Grade</label>
                 <div class="col-lg-8">
                     <asp:textbox id="txtGrade" runat="server" class="form-control" type="number" required />
                 </div>
             </div>
            

            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnUpload" runat="server"
                        class="btn btn-success" Text="Submit"
                        onClick="btnUpload_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>