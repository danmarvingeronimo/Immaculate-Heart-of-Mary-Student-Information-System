<%@ Page Title="" Language="C#" MasterPageFile="Online.master" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="Online_Application_Application" Culture="en-GB" %>

<%--Dan Marvin Geronimo--%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section>
        <div class="col-lg-12 col-md-12">
            <h1>Online Application</h1>
            <div class="panel panel-blue">
                <div class="panel-heading">Registration</div>
                <form runat="server" class="form-horizontal">
                    <div class="panel-body">
                        <div class="rows">

                            <div class="col-lg-12 col-md-12">
                                <div class="alert alert alert-warning-blue">
                                    <strong>IMPORTANT NOTES :</strong>
                                    <ul class="important-notes">
                                        <li><span style="color: red;">*</span> Indicates required field</li>
                                        <li>Please update your information.</li>
                                    </ul>
                                </div>
                                <h4>Basic Information </h4>
                            </div>

                            <!--BASIC INFORMATION -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Grade Level<span style="color: red;">*</span></label>
                                    <div class="col-sm-8">
                                        <asp:DropDownList ID="DropDownList7" runat="server" class="form-control" required="required">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-lg-4">First Name<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFN" runat="server"
                                            class="form-control" type="text" MaxLength="100"
                                            required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Middle Name<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMN" runat="server"
                                            class="form-control" type="text" MaxLength="100" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Last Name<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtLN" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>

                                <!--PLEASE CHANGE TO DROPDOWN -->
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Gender<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required="required">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">City<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtCity" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Barangay<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtBrngy" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Municipality<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMun" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Street<span style="color: red;">*</span></label>
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
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Birth Date<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtBirthDate" runat="server"
                                            class="form-control" type="date" MaxLength="100" 
                                            required />
                                        <asp:RangeValidator ID="RangeValidator1" runat="server"
                                            ControlToValidate="txtBirthDate" Display="Dynamic" ErrorMessage="Invalid Date!"
                                            ForeColor="Red"
                                            MaximumValue="1/1/2010" MinimumValue="01/01/2005" SetFocusOnError="True"
                                            Type="Date"></asp:RangeValidator>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Place of Birth<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtBirthPlace" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Religion<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtReligion" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>
                            </div>




                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Date of Baptism</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtBaptDate" runat="server"
                                            class="form-control" type="date" MaxLength="50" />
                                        <asp:CompareValidator ID="CompareValidator1" ValidationGroup="Date" ForeColor="Red" runat="server"
                                             ControlToValidate="txtBirthDate" ControlToCompare="txtBaptDate" Operator="LessThan" Type="Date"
                                            ErrorMessage="Baptism date can not be earlier than birthdate!"></asp:CompareValidator>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-lg-4">Place of Baptism</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtBaptPlace" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Nationality<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" required="required">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Filipino Student</asp:ListItem>
                                            <asp:ListItem>Foreign Student</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Previous School<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtStudPrevSchool" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Previous School Year<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtStudPrevSchoolYear" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Previous School Address<span style="color: red;">*</span></label>
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
                                            class="form-control" type="text" MaxLength="500" TextMode="MultiLine" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Extra Curricular Activities</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtStudExtraCurAct" runat="server"
                                            class="form-control" type="text" MaxLength="500" TextMode="MultiLine" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Hobbies</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtStudHobbies" runat="server"
                                            class="form-control" type="text" MaxLength="500" TextMode="MultiLine" />


                                    </div>
                                </div>



                                <div class="form-group">
                                    <label class="control-label col-lg-4">Places Traveled</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtPlaceTravel" runat="server"
                                            class="form-control" type="text" MaxLength="500" TextMode="MultiLine" />
                                    </div>
                                </div>
                            </div>


                            <!-- END BASIC INFORMATION -->

                            <div class="clearfix"></div>
                            <hr />


                            <!-- PARENT INFO -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <h4>Parent Info</h4>
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Father's Full Name<span style="color: red;">*</span></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtFatherFN" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Age</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFatherAge" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Birthplace</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFatheBirthplace" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>

                                <!--PLEASE CHANGE -->
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Nationality<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" required="required">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Filipino</asp:ListItem>
                                            <asp:ListItem>Foreigner</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Religion</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFatherReligion" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Home Address</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFatherHomeAdd" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Phone No.<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtxfatherPhoneNo" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>


                                <!--PLEASE CHANGE TO DROPDOWN -->
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Educational Status</label>
                                    <div class="col-lg-8">
                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Primary Education</asp:ListItem>
                                            <asp:ListItem>Secondary Education</asp:ListItem>
                                            <asp:ListItem>Tertiary Education</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">School Graduated</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFatheSchoolGrad" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Employment</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFatherEmploy" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-lg-4">Office Address</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFatheOffAdd" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-lg-4">Nature of Business</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtFatheNatBus" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                            </div>

                            <br />
                            <br />

                            <!--MOTHER -->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <div class="form-group">
                                    <label class="control-label col-sm-4">Mother's Full Name<span style="color: red;">*</span></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtMotherFN" runat="server"
                                            class="form-control" type="text" MaxLength="100"
                                            required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Age</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherAge" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Birthplace</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherBP" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>

                                <!-- PLEASE CHANGE -->
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Nationality<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:DropDownList ID="DropDownList6" runat="server" class="form-control" required="required">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Filipino</asp:ListItem>
                                            <asp:ListItem>Foreigner</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Religion</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherReligion" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Home Address</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherHomeAdd" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Phone No.<span style="color: red;">*</span></label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherPhoneNo" runat="server"
                                            class="form-control" type="text" MaxLength="50"
                                            required />
                                    </div>
                                </div>

                                <!-- PLEAE CHANGE -->
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Educational Status</label>
                                    <div class="col-lg-8">
                                        <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem>Primary Education</asp:ListItem>
                                            <asp:ListItem>Secondary Education</asp:ListItem>
                                            <asp:ListItem>Tertiary Education</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">School Graduated</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherSchoolGrad" runat="server"
                                            class="form-control" type="text" MaxLength="100" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Employment</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherEmployem" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Office Address</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherOfficeAdd" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">Nature of Business</label>
                                    <div class="col-lg-8">
                                        <asp:TextBox ID="txtMotherNatureBus" runat="server"
                                            class="form-control" type="text" MaxLength="50" />
                                    </div>
                                </div>
                            </div>




                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <hr />
                                <div class="form-group text-center">
                                    <asp:Button ID="btnApply" runat="server"
                                        CssClass="btn btn-success"
                                        OnClick="btnApply_Click"
                                        Text="Submit"></asp:Button>

                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
