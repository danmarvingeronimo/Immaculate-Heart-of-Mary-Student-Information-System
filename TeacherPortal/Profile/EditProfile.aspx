<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Profile/Profile.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="TeacherPortal_Profile_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
           <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> User Profile </h1>
    </section>
    <!-- Main content -->
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
            Edit Info
      </h1>
         <div class="tab-pane" id="settings">
                <form runat="server" class="form-horizontal"><br />

                 <div class="form-group">
                    <label class="control-label col-sm-2">First Name</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="txtTeacherID" runat="server" class="form-control" type="Id" MaxLength="10" required />
                    </div>
                  </div>

                    
                 <div class="form-group">
                    <label class="control-label col-sm-2">Middle Name</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="TextBox1" runat="server" class="form-control" type="Id" MaxLength="10" required />
                    </div>
                  </div>

                    
                 <div class="form-group">
                    <label class="control-label col-sm-2">Last Name</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="TextBox2" runat="server" class="form-control" type="Id" MaxLength="10" required />
                    </div>
                  </div>

                    
                 <div class="form-group">
                    <label class="control-label col-sm-2">Department</label>
                    <div class="col-sm-6">
                      <asp:TextBox ID="TextBox3" runat="server" class="form-control" type="Id" MaxLength="10" required />
                    </div>
                  </div>


                 <div class="form-group">
                    <div class="col-sm-8">
                       <span class="pull-right">
                    <asp:Button ID="btnUpdate" runat="server" class="btn btn-success" Text="Update" onclick="btnUpdate_Click" />
                </span>
                    </div>
                  </div>
               </form><br /><br /><br /><br /><br />
              </div>
              <!-- /.tab-pane -->
            </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
        </section>
</asp:Content>

