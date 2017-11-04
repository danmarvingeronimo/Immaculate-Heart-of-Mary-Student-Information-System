<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Admission/Online Application/Online.master" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="Online_Application_Application" %>

<%--Dan Marvin Geronimo--%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <h1>Student Application</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section class="content-header">
        <h1>Student Info</h1>
    </section>

    <section class="content">
        <div class="row">
            <form runat="server" class="form-horizontal">
                <div class="col-md-3">

                    <%--<div id="error" runat="server" class="alert alert-danger"
                visible="false">
                Email address already taken!
            </div>--%>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Grade Level</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtGradelvl" runat="server"
                                class="form-control" type="text" maxlength="1"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">First Name</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtFN" runat="server"
                                class="form-control" type="text" maxlength="100"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Middle Name</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtMN" runat="server"
                                class="form-control" type="text" maxlength="100" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Last Name</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtLN" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Gender</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtGender" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">City</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtCity" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Barangay</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtBrngy" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Municipality</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtMun" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Street</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtStreet" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Provincial Address</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtProvAdd" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Birth Date</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtBirthDate" runat="server"
                                class="form-control" type="date" maxlength="100"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Place of Birth</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtBirthPlace" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Religion</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtReligion" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Date of Baptism</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtBaptDate" runat="server"
                                class="form-control" type="date" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Place of Baptism</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtBaptPlace" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">Nationality</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtNat" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>





                    <div class="form-group">
                        <h1>Other Info</h1>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4">Previous School</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtStudPrevSchool" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4">Previous School Year</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtStudPrevSchoolYear" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4">Previous School Address</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtStudPrevSchoolAdd" runat="server"
                                class="form-control" type="text" maxlength="50"
                                required />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4">Significant Awards</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtStudSigAward" runat="server"
                                class="form-control" type="text" maxlength="500" textmode="MultiLine"
                                required />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4">Extra Curricular Activities</label>
                        <div class="col-lg-8">
                            <asp:textbox id="txtStudExtraCurAct" runat="server"
                                class="form-control" type="text" maxlength="500" textmode="MultiLine"
                                required />
                        </div>
                    </div>
                </div>


                <%--Multiple Entries--%>

                <div class="col0-md-9">
                    <div class="navs-tabs-custom">
                            <div class="form-group">
                                <label class="control-label col-lg-4">Hobbies</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtStudHobbies" runat="server"
                                        class="form-control" type="text" maxlength="500" textmode="MultiLine"
                                        required />


                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Age</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtStudAge" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Places Traveled</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtPlaceTravel" runat="server"
                                        class="form-control" type="text" maxlength="500" textmode="MultiLine"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <h1>Parent's Info</h1>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-lg-4">Father's Full Name</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatherFN" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Age</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatherAge" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Birthplace</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatheBirthplace" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Nationality</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatherNat" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Religion</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatherReligion" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Home Address</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatherHomeAdd" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Phone No.</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtxfatherPhoneNo" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Educational Status</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatheEduStat" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">School Graduated</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatheSchoolGrad" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Employment</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatherEmploy" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-lg-4">Office Address</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatheOffAdd" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-lg-4">Nature of Business</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtFatheNatBus" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>



                            <br />

                            <div class="form-group">
                                <label class="control-label col-lg-4">Mother's Full Name</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherFN" runat="server"
                                        class="form-control" type="text" maxlength="100"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Age</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherAge" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Birthplace</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherBP" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Nationality</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherNat" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Religion</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherReligion" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Home Address</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherHomeAdd" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Phone No.</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherPhoneNo" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Educational Status</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherEduStat" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">School Graduated</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherSchoolGrad" runat="server"
                                        class="form-control" type="text" maxlength="100"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Employment</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherEmployem" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Office Address</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherOfficeAdd" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-lg-4">Nature of Business</label>
                                <div class="col-lg-8">
                                    <asp:textbox id="txtMotherNatureBus" runat="server"
                                        class="form-control" type="text" maxlength="50"
                                        required />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-offset-4 col-lg-8">
                                    <asp:button id="btnApply" runat="server"
                                        cssclass="btn btn-success" text="Submit"
                                        onclick="btnApply_Click" />
                                </div>
                            </div>
                    </div>

                </div>
            </form>
        </div>

    </section>
</asp:Content>
