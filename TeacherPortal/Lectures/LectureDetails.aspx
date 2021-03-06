﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="LectureDetails.aspx.cs" Inherits="TeacherPortal_Class" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa  fa-book"></i>
     Edit Upload<asp:Literal ID="ltID" runat="server" visible="false"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">


        <ol class="breadcrumb">
        <li><a href="../Homepage.aspx"><i class="fa fa-dashboard"></i> Homepage</a></li>
        <li><a href="ViewSUbject.aspx"><i class="fa fa-dashboard"></i> Subject List</a></li>
        <li><a href="ViewLectures.aspx"><i class="fa fa-dashboard"></i> Lectures List</a></li>
        <li class="active">Lectures Details</li>
      </ol>

    <form runat="server" class=" form-horizontal">
        <div class="col-lg-6">
      <div class="form-group">
                <label class="control-label col-lg-4">Title</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtTitle" runat="server" class="form-control" type="text"  />
                </div>
            </div>


     <div class="form-group">
                <label class="control-label col-lg-4">Description</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtDescription" runat="server" class="form-control" type="text" MaxLength="500" TextMode="MultiLine"  />
                </div>
            </div>
   
            
           <div class="form-group">
               <div class="col-lg-offset-4 col-lg-8">
                   <asp:Button ID="btnUpdate" runat="server"
                       class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                   <a href="ViewLectures.aspx" class="btn btn-default">
                       Back to View
                   </a>
               </div>
           </div>
      </div>
    </form>
    <br />
</asp:Content>


