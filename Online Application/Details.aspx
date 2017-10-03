<%@ Page Title="" Language="C#" MasterPageFile="~/Online Application/OnlineApplication.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Online_Application_Details" %>

<%--Jionne Lizardo--%>


<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa  fa-book"></i>
     Admin ID #<asp:Literal ID="ltID" runat="server" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Parent Info
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-6">
            <%--<div id="error" runat="server" class="alert alert-danger"
                visible="false">
                Email address already taken!
            </div>--%>
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


            <br />

            <div class="form-group">
                <h1>Other Class Info</h1>
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


           <%--Time Stamp--%>
            
            <br />

            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <asp:Button ID="btnAdd" runat="server"
                        class="btn btn-success" Text="Add"
                        OnClick="btnAdd_Click" />
                </div>
            </div>



        </div>




        <%--Father--%>

        <div class="col-lg-6">
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
        </div>

    </form>
</asp:Content>