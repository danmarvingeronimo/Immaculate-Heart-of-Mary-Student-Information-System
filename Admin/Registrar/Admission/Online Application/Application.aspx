<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Admission/Online Application/OnlineApplication.master" AutoEventWireup="true" CodeFile="ApplicationPage1.aspx.cs" Inherits="Online_Application_Application" %>

<%--Dan Marvin Geronimo--%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Student Application
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <%--<div id="error" runat="server" class="alert alert-danger"
                visible="false">
                Email address already taken!
            </div>--%>
            <div class="form-group">
                <label class="control-label col-lg-4">Grade Level</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtGradelvl" runat="server"
                        class="form-control" type="text" MaxLength="1"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">First Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFN" runat="server"
                        class="form-control" type="text" MaxLength="100"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Middle Name</label>
               <div class="col-lg-8">
                    <asp:TextBox ID="txtMN" runat="server"
                        class="form-control" type="text" MaxLength="100"
                         />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Last Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtLN" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Gender</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtGender" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">City</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtCity" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Barangay</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBrngy" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Municipality</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMun" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Street</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStreet" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Provincial Address</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtProvAdd" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Birth Date</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBirthDate" runat="server"
                        class="form-control" type="date" MaxLength="100"
                        required />
                </div>
            </div>
             <div class="form-group">
                <label class="control-label col-lg-4">Place of Birth</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBirthPlace" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Religion</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtReligion" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
             <div class="form-group">
                <label class="control-label col-lg-4">Date of Baptism</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBaptDate" runat="server"
                       class="form-control" type="date" MaxLength="50"
                        required />
                </div>
            </div>
             <div class="form-group">
                <label class="control-label col-lg-4">Place of Baptism</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtBaptPlace" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Nationality</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtNat" runat="server"
                       class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            
            <div class="form-group">
                <h1>Other Info</h1>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Previous School</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStudPrevSchool" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Previous School Year</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStudPrevSchoolYear" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Previous School Address</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStudPrevSchoolAdd" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Significant Awards</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStudSigAward" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Extra Curricular Activities</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStudExtraCurAct" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            
            <%--Multiple Entries--%>


            <div class="form-group">
                <label class="control-label col-lg-4">Hobbies</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStudHobbies" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                    

                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Age</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtStudAge" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Places Traveled</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtPlaceTravel" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

             <div class="form-group">
                <h1>Parent's Info</h1>
            </div>

            
            <div class="form-group">
                <label class="control-label col-lg-4">Father's Full Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatherFN" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Age</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatherAge" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Birthplace</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatheBirthplace" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Nationality</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatherNat" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Religion</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatherReligion" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Home Address</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatherHomeAdd" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Phone No.</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtxfatherPhoneNo" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Educational Status</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatheEduStat" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">School Graduated</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatheSchoolGrad" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Employment</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatherEmploy" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-4">Office Address</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatheOffAdd" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-lg-4">Nature of Business</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtFatheNatBus" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>



            <br />

            <div class="form-group">
                <label class="control-label col-lg-4">Mother's Full Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherFN" runat="server"
                        class="form-control" type="text" MaxLength="100"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Age</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherAge" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Birthplace</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherBP" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Nationality</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherNat" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Religion</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherReligion" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Home Address</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherHomeAdd" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Phone No.</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherPhoneNo" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Educational Status</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherEduStat" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">School Graduated</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherSchoolGrad" runat="server"
                        class="form-control" type="text" MaxLength="100"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Employment</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherEmployem" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Office Address</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherOfficeAdd" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Nature of Business</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtMotherNatureBus" runat="server"
                        class="form-control" type="text" MaxLength="50"
                        required />
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnApply" runat="server"
                        CssClass="btn btn-success" Text="Submit"
                        OnClick="btnApply_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
