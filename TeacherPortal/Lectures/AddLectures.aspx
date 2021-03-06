﻿<%@ Page Title="" Language="C#"  MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="AddLectures.aspx.cs" Inherits="TeacherPortal_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-plus"></i> Upload Lecture
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form form-horizontal">
         <div class="col-lg-6">

                  <div class="form-group">
                <label class="control-label col-lg-4">Title</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtTitle" runat="server" class="form-control" type="text" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Description</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtDescription" runat="server" class="form-control" type="text" MaxLength="500" TextMode="MultiLine" required />
                </div>
            </div>
   
              <div class="form-group">
                <label class="control-label col-lg-4">File</label>
                <div class="col-lg-8">
                    <asp:FileUpload ID="FileContent" runat="server" class="form-control" required />
                  </div>
             </div>

              <div class="form-group">
                <label class="control-label col-lg-4">Subject</label>
                <div class="col-lg-8">
                    <asp:DropDownList ID="ddlSubject" runat="server"
                        class="form-control" required />
                </div>
            </div>

             

            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnUpload" runat="server"
                        class="btn btn-success" Text="Upload"
                        onClick="btnUpload_Click" />
                     <a href="ViewLectures.aspx" class="btn btn-default">
                         Cancel
                     </a>
                </div>
            </div>
        </div>
    </form>
    <br />
</asp:Content>