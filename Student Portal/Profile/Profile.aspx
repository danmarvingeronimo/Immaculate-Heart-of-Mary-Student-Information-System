<%@ Page Title="" Language="C#" MasterPageFile="~/Student Portal/Student.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Student_Portal_Profile_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section class="content-header">
        <h1>User Profile </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-3">
                <div class="box box-primary">
                    <div class="box body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="~/img/user2-160x160.jpg" runat="server" alt="User profile picture" />
                        <h3>
                            <asp:literal id="ltUID" runat="server" visible="true" />
                        </h3>
                        <p class="text-muted text-center">
                            <asp:label runat="server" id="First_Name"><%#Eval("su.First_Name") %></asp:label>
                        </p>
                        <p class="text-muted text-center">
                            <asp:label runat="server" id="Middle_Name"><%#Eval("su.Middle_Name")%> </asp:label>
                        </p>
                        <p class="text-muted text-center">
                            <asp:label runat="server" id="Last_Name"> <%#Eval("su.Last_Name") %></asp:label>
                        </p>
                    </div>
                </div>


                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">About Me</h3>
                    </div>
                    <div class="box-body">
                        <strong><i class="fa fa-pencil margin-r-5"></i>Gender</strong>
                        <p>
                            <asp:label runat="server" id="Gender"><%#Eval("su.Gender") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Year Level</strong>
                        <p>
                            <asp:label runat="server" id="Year_Level"><%#Eval("su.Year_Level") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Status</strong>
                        <p>
                            <asp:label runat="server" id="Status"><%#Eval("ST.Status_Desc") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>City</strong>
                        <p>
                            <asp:label runat="server" id="City"><%#Eval("su.City") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Barangay</strong>
                        <p>
                            <asp:label runat="server" id="Brngy"><%#Eval("su.Brngry") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Municipality</strong>
                        <p>
                            <asp:label runat="server" id="Municipality"><%#Eval("su.Municipality") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Street</strong>
                        <p>
                            <asp:label runat="server" id="Street"><%#Eval("su.Street") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Provincial Address</strong>
                        <p>
                            <asp:label runat="server" id="Prov_Add"><%#Eval("su.Prov_Add") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Birth Date</strong>
                        <p>
                            <asp:label runat="server" id="Birth_Date"><%#Eval("su.Birth_Date") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Birth Place</strong>
                        <p>
                            <asp:label runat="server" id="Birth_Place"><%#Eval("su.Birth_Place") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Religion</strong>
                        <p>
                            <asp:label runat="server" id="Religion"><%#Eval("su.Religion") %></asp:label>
                        </p>
                        <hr />

                        <strong><i class="fa fa-pencil margin-r-5"></i>Baptismal Date</strong>
                        <p>
                            <asp:label runat="server" id="Bapt_Date"><%#Eval("su.Bapt_Date") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Baptismal Place</strong>
                        <p>
                            <asp:label runat="server" id="Bapt_Place"><%#Eval("su.Bapt_Place") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Nationality</strong>
                        <p>
                            <asp:label runat="server" id="Nationality"><%#Eval("su.Nationality") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Section Name</strong>
                        <p>
                            <asp:label runat="server" id="Section"><%#Eval("SE.Section_Name") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>User ID</strong>
                        <p>
                            <asp:label runat="server" id="User_ID"><%#Eval("su.User_ID") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Previous School</strong>
                        <p>
                            <asp:label runat="server" id="Prev_School"><%#Eval("su.Prev_School") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Previous School Year</strong>
                        <p>
                            <asp:label runat="server" id="Prev_SY"><%#Eval("su.Prev_SY") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Previous School Address</strong>
                        <p>
                            <asp:label runat="server" id="Prev_SchoolAdd"><%#Eval("su.Prev_SchoolAdd") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Significant Awards</strong>
                        <p>
                            <asp:label runat="server" id="Significant_Awards"><%#Eval("su.Significant_Awards") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Extra Curricular Activities</strong>
                        <p>
                            <asp:label runat="server" id="Extra_CurricularAct"><%#Eval("su.Extra_CurricularAct") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Hobbies</strong>
                        <p>
                            <asp:label runat="server" id="Hobbies"><%#Eval("su.Hobbies") %></asp:label>
                        </p>
                        <hr />
                        <strong><i class="fa fa-pencil margin-r-5"></i>Place Traveled</strong>
                        <p>
                            <asp:label runat="server" id="Place_Traveled"><%#Eval("su.Place_Traveled") %></asp:label>
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h4 class="box-title">Mother's Info</h4>
                        </div>
                        <div class="box-body">
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Name</strong>
                            <p>
                                <asp:label runat="server" id="Mother_FullName"><%#Eval("su.Mother_FullName") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Age</strong>
                            <p>
                                <asp:label runat="server" id="Mother_Age"><%#Eval("su.Mother_Age") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Birthplace</strong>
                            <p>
                                <asp:label runat="server" id="Mother_BirthPlace"><%#Eval("su.Mother_BirthPlace") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Nationality</strong>
                            <p>
                                <asp:label runat="server" id="Mother_Natl"><%#Eval("su.Mother_Natl") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Religion</strong>
                            <p>
                                <asp:label runat="server" id="Mother_Religion"><%#Eval("su.Mother_Religion") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Home Address</strong>
                            <p>
                                <asp:label runat="server" id="Mother_HomeAdd"><%#Eval("su.Mother_HomeAdd") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Phone Number</strong>
                            <p>
                                <asp:label runat="server" id="Mother_PhoneNo"><%#Eval("su.Mother_PhoneNo") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Educational Status</strong>
                            <p>
                                <asp:label runat="server" id="Mother_EduStat"><%#Eval("su.Mother_EduStat") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's School She Graduated</strong>
                            <p>
                                <asp:label runat="server" id="Mother_SchoolGrad"><%#Eval("su.Mother_SchoolGrad") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Employment</strong>
                            <p>
                                <asp:label runat="server" id="Mother_Employm"><%#Eval("su.Mother_Employm") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Office Address</strong>
                            <p>
                                <asp:label runat="server" id="Mother_OffAdd"><%#Eval("su.Mother_OffAdd") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Nature of Business</strong>
                            <p>
                                <asp:label runat="server" id="Mother_NatBus"><%#Eval("su.Mother_Natbus") %></asp:label>
                            </p>
                        </div>
                    </div>


                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Father's Info</h3>
                        </div>
                        <div class="box-body">
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Name</strong>
                            <p>
                                <asp:label runat="server" id="Father_FullName"><%#Eval("su.Father_FullName") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Age</strong>
                            <p>
                                <asp:label runat="server" id="Father_Age"><%#Eval("su.Father_Age") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's BirthPlace</strong>
                            <p>
                                <asp:label runat="server" id="Father_BirthPlace"><%#Eval("su.Father_BirthPlace") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Nationality</strong>
                            <p>
                                <asp:label runat="server" id="Father_Natl"><%#Eval("su.Father_Natl") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Religion</strong>
                            <p>
                                <asp:label runat="server" id="Father_Religion"><%#Eval("su.Father_Religion") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Home Address</strong>
                            <p>
                                <asp:label runat="server" id="Father_HomeAdd"><%#Eval("su.Father_HomeAdd") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Phone Number</strong>
                            <p>
                                <asp:label runat="server" id="Father_PhoneNo"><%#Eval("su.Father_PhoneNo") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Educational Status</strong>
                            <p>
                                <asp:label runat="server" id="Father_EduStat"><%#Eval("su.Father_EduStat") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's School Graduated</strong>
                            <p>
                                <asp:label runat="server" id="Father_SchoolGrad"><%#Eval("su.Father_SchoolGrad") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Employment</strong>
                            <p>
                                <asp:label runat="server" id="Father_Employm"><%#Eval("su.Father_Employm") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Office Address</strong>
                            <p>
                                <asp:label runat="server" id="Father_OffAdd"><%#Eval("su.Father_OffAdd") %></asp:label>
                            </p>
                            <hr />
                            <strong><i class="fa fa-pencil margin-r-5"></i>Father's Nature of Business</strong>
                            <p>
                                <asp:label runat="server" id="Father_NatBus"><%#Eval("su.Father_NatBus") %></asp:label>
                            </p>
                            <br /><br />  <br /><br /><br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

