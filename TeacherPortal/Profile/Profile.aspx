<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherPortal/Teacher.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="TeacherPortal_Profile_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Teacher Profile
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section class="content-header">
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-3">
                <div class="box box-primary">
                    <div class="box-body box-profile">
                      <img id="Img1" class="profile-user-img img-responsive img-circle" src='<%#Eval("Image") %>' height="400" width="400" runat="server" alt="User profile picture" />
                        <%-- <img id="Img2" runat="server" src='<%# string.Concat("../../img/faculty/", Eval("Image")) %>' class="img-responsive" width="100" height="200" />--%>
                     <%--   <asp:Image ID="Img2" runat="server" src='<%# string.Concat("../../img/faculty/", Eval("Image")) %>'/>--%>
                        <br /><br /> <h3>
                            <asp:Literal ID="ltUID" runat="server" Visible="true" /></h3>
                      
                    </div>
                </div>

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">PERSONAL INFO</h3>
                    </div>
                    <div class="box-body">
                        <strong>FULL NAME</strong>
                        <p>
                            <asp:Label class="col-sm-2 control-label" runat="server" ID="lblFN"><%#Eval("Teacher_FirstName") %></asp:Label>
                            <asp:Label class="col-sm-2 control-label" runat="server" ID="lblMN"><%#Eval("Teacher_MiddleName") %></asp:Label>
                            <asp:Label class="col-sm-2 control-label" runat="server" ID="lblLN"><%#Eval("Teacher_LastName") %></asp:Label>
                        </p>
                        <br /><hr />
                        <strong>DEPARTMENT</strong>
                        <p>
                            <asp:Label runat="server" class="col-sm-2 control-label" ID="lblDept"><%#Eval("Department") %></asp:Label></p>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>

            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <br />
                    <h1 style="margin-left: 20px;">Update Personal Info
                    </h1>
                    <form runat="server" class="form-horizontal">
                        <br />
                        <br />
                        <br />

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
                                    <asp:Button ID="btnUpdate" runat="server" class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                                    <%-- <asp:Button ID="btnCancel" runat="server" class="btn btn-warning" Text="Cancel" onclick="btnCancel_Click" />--%>
                                </span>
                            </div>
                        </div>
                    </form>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
