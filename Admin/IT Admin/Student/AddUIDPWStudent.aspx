<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master"AutoEventWireup="true" CodeFile="AddUIDPWStudent.aspx.cs" Inherits="TeacherPortal_Class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <h1><i class="fa fa-edit"></i>
     Section <asp:Literal ID="ltSID" runat="server" />
    </h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class=" form-horizontal">
        <div class="col-lg-6">
             <div class="form-group">

                <div class="form-group">
                <label class="control-label col-lg-4">User ID</label>
                <div class="col-lg-8">
                        <asp:TextBox ID="txtUID" runat="server"
                            class="form-control" MaxLength="50" required />
                </div>
            </div>
           
            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-8">
                        <asp:TextBox ID="txtPWD" runat="server"
                            class="form-control" type="password" MaxLength="50" required />
                </div>

            
            </div>
        </div>
           <div class="form-group">
               <div class="col-lg-offset-4 col-lg-8">
                   <asp:Button ID="btnUpdate" runat="server"
                       class="btn btn-success" Text="Update" OnClick="btnUpdate_Click" />
                   <a href="IDStudentList.aspx" class="btn btn-default">
                       Back to View
                   </a>
               </div>
           </div>
        </div>
    </form>
</asp:Content>