<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Profile/Profile.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="TeacherPortal_Profile_Profile" %>

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
              <img class="profile-user-img img-responsive img-circle" src="~/img/user2-160x160.jpg" runat="server" alt="User profile picture"/>
              <h3 class="profile-username text-center">Nina Mcintire</h3>
              <p class="text-muted text-center">Software Engineer</p>
            </div>
          </div>

          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">About Me</h3>
            </div>
            <div class="box-body">
              <strong><i class="fa fa-book margin-r-5"></i>Subjects</strong>
              <p>
                <span class="label label-danger">UI Design</span>
                <span class="label label-success">Coding</span>
               </p>
              <hr />
              <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>
              <p class="text-muted">Malibu, California</p>
              <hr />
                <strong><i class="fa fa-pencil margin-r-5"></i>Department</strong>
                <p>English</p>       
            </div>
          </div>
        </div>
        <div class="col-md-9">
          <div class="nav-tabs-custom"><br />

             <a href="Profile.aspx" style="margin-left:20px;" type="submit" class="btn btn-info" runat="server">Profile</a>
             <a href="EditProfile.aspx" type="submit" class="btn btn-danger" runat="server">Edit Profile</a>
             <h1 style="margin-left:20px;">
            Personal Info
      </h1>
              <div class="tab-pane" id="settings">
                <form class="form-horizontal"><br />
                 <div class="form-group">
                    <label style="color: #367fa9;" class="col-sm-2 control-label">First Name</label>

                    <div class="col-sm-10">
                        <asp:Label runat="server" ID="Teacher_FirstName"><%#Eval("Teacher_FirstName") %></asp:Label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label style="color: #367fa9;" class="col-sm-2 control-label">Middle Name</label>

                    <div class="col-sm-10">
                        <asp:Label runat="server" ID="Teacher_MiddleName"><%#Eval("Teacher_MiddleName") %></asp:Label>
                    </div>
                  </div>
                        <div class="form-group">
                    <label style="color: #367fa9;" class="col-sm-2 control-label">Last Name</label>

                    <div class="col-sm-10">
                       <asp:Label runat="server" ID="Teacher_LastName"><%#Eval("Teacher_LastName") %></asp:Label>
                    </div>
                  </div>
                       <div class="form-group">
                    <label style="color: #367fa9;" class="col-sm-2 control-label">Department</label>

                    <div class="col-sm-10">
                     <asp:Label runat="server" ID="Department"><%#Eval("Department") %></asp:Label>
                    </div>
                  </div>
    
                </form><br /><br /><br /><br /><br /><br /><br /><br /><br />
              </div>
            </div>
        </div>
      </div>
        </section>
</asp:Content>