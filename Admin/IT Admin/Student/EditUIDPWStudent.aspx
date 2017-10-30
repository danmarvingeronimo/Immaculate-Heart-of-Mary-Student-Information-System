<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="EditUIDPWStudent.aspx.cs" Inherits="TeacherPortal_Class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa  fa-book"></i>
    <asp:Literal ID="ltSID" runat="server" Visible="true" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class=" form-horizontal">
        <div class="col-lg-6">
            <div class="form-group">
                <div class="form-group">
                    <label class="control-label col-lg-4">User ID</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtUID" runat="server" MaxLength="10" class="form-control" type="text" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-4">Password</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtPWD" runat="server" class="form-control" type="password" minlength="8" MaxLength="20" required />
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-lg-4">Repeat Password</label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="TxtRepPass" runat="server"
                            class="form-control" type="password" minlength="8" MaxLength="20" required />
                        <asp:CompareValidator ID="comparePasswords"
                            runat="server"
                            ControlToCompare="txtPWD"
                            ControlToValidate="txtRepPass"
                            ErrorMessage="Incorrect Password!"
                            ForeColor="red" />

                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-offset-4 col-lg-8">
                        <asp:Button ID="btnUpdate" runat="server"
                            class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                        <a href="ITAdminViewSection.aspx" class="btn btn-default">Back to View
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>


