<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="AddFaculty.aspx.cs" Inherits="Section_AddSection" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
<i class="fa fa-user-plus"></i> Add Faculty
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form form-horizontal">
        <div class="col-lg-6">
        <%--    <div class="form-group">
                <label class="control-label col-lg-4">Section ID</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtSectionID" runat="server"
                        class="form-control" MaxLength="8" required />
                </div>
               </div>--%> 
             <div class="form-group">
                <label class="control-label col-lg-4">Image</label>
                <div class="col-lg-8">
                    <asp:FileUpload ID="fuImage" runat="server" class="form-control" required />
                  </div>
             </div>

            <div class="form-group">
                <label class="control-label col-lg-4">First Name</label>
                <div class="col-lg-8">
                        <asp:TextBox ID="txtFN" runat="server"
                            class="form-control" MaxLength="40" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Middle Name</label>
                <div class="col-lg-8">
                        <asp:TextBox ID="txtMN" runat="server"
                            class="form-control" MaxLength="40" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Last Name</label>
                <div class="col-lg-8">
                        <asp:TextBox ID="txtLN" runat="server"
                            class="form-control" MaxLength="40" required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">User ID</label>
                <div class="col-lg-8">
                        <asp:TextBox ID="txtUID" runat="server"
                            class="form-control" MaxLength="10" required />
                </div>
            </div>
           
            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                        <asp:TextBox ID="txtPass" runat="server"
                            class="form-control" type="password" MaxLength="20" minlength="8" required />
                </div>
            </div>

            
            <div class="form-group">
                <label class="control-label col-lg-4">Repeat Password</label>
                <div class="col-lg-8">
                    <asp:textbox id="TxtRepPass" runat="server"
                        class="form-control" type="password" minlength="8" maxlength="20" required />
                    <asp:comparevalidator id="comparePasswords"
                        runat="server"
                        controltocompare="txtPass"
                        controltovalidate="txtRepPass"
                        errormessage="Incorrect Password!"
                        forecolor="red" />

                </div>
            </div>
            
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnAdd" runat="server"
                        class="btn btn-success" Text="Add"
                         OnClick="btnAdd_Click" />
                </div>
            </div>
            </div> 
        
    </form>
</asp:Content>

