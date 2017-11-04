<%@ Page Title="" Language="C#" MasterPageFile="Profile.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Student_Portal_Profile_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section class="content-header">
        <h1>User Profile </h1>
    </section>

    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <section class="content">
                            <div class="row">
                                <div class="col-md-14">
                                    <img class="profile-user-img img-responsive img-circle" src="~/img/user2-160x160.jpg" runat="server" alt="User profile picture" />
                                    <h3>
                                        <asp:Literal ID="ltUID" runat="server" Visible="true" /></h3>
                                    <p class="text-muted text-center">
                                        <asp:Label runat="server" ID="First_Name"><%#Eval("su.First_Name") %></asp:Label></p>
                                    <p class="text-muted text-center">
                                        <asp:Label runat="server" ID="Middle_Name"><%#Eval("su.Middle_Name")%> </asp:Label></p>
                                    <p class="text-muted text-center">
                                        <asp:Label runat="server" ID="Last_Name"> <%#Eval("su.Last_Name") %></asp:Label></p>
                                </div>
                            </div>

                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">About Me</h3>
                                </div>
                                <div class="box-body">
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Gender</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Gender"><%#Eval("su.Gender") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Year Level</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Year_Level"><%#Eval("su.Year_Level") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Status</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Status"><%#Eval("ST.Status_Desc") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>City</strong>
                                    <p>
                                        <asp:Label runat="server" ID="City"><%#Eval("su.City") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Barangay</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Brngy"><%#Eval("su.Brngry") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Municipality</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Municipality"><%#Eval("su.Municipality") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Street</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Street"><%#Eval("su.Street") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Provincial Address</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Prov_Add"><%#Eval("su.Prov_Add") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Birth Date</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Birth_Date"><%#Eval("su.Birth_Date") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Birth Place</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Birth_Place"><%#Eval("su.Birth_Place") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Religion</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Religion"><%#Eval("su.Religion") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Baptismal Date</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Bapt_Date"><%#Eval("su.Bapt_Date") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Baptismal Place</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Bapt_Place"><%#Eval("su.Bapt_Place") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Nationality</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Nationality"><%#Eval("su.Nationality") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Section Name</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Section"><%#Eval("SE.Section_Name") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>User ID</strong>
                                    <p>
                                        <asp:Label runat="server" ID="User_ID"><%#Eval("su.User_ID") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Previous School</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Prev_School"><%#Eval("su.Prev_School") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Previous School Year</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Prev_SY"><%#Eval("su.Prev_SY") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Previous School Address</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Prev_SchoolAdd"><%#Eval("su.Prev_SchoolAdd") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Significant Awards</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Significant_Awards"><%#Eval("su.Significant_Awards") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Extra Curricular Activities</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Extra_CurricularAct"><%#Eval("su.Extra_CurricularAct") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Hobbies</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Hobbies"><%#Eval("su.Hobbies") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Place Traveled</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Place_Traveled"><%#Eval("su.Place_Traveled") %></asp:Label></p>
                                </div>
                            </div>


                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Mother's Info</h3>
                                </div>
                                <div class="box-body">
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Name</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_FullName"><%#Eval("su.Mother_FullName") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Age</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_Age"><%#Eval("su.Mother_Age") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Birthplace</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_BirthPlace"><%#Eval("su.Mother_BirthPlace") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Nationality</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_Natl"><%#Eval("su.Mother_Natl") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Religion</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_Religion"><%#Eval("su.Mother_Religion") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Home Address</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_HomeAdd"><%#Eval("su.Mother_HomeAdd") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Phone Number</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_PhoneNo"><%#Eval("su.Mother_PhoneNo") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Educational Status</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_EduStat"><%#Eval("su.Mother_EduStat") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's School She Graduated</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_SchoolGrad"><%#Eval("su.Mother_SchoolGrad") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Employment</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_Employm"><%#Eval("su.Mother_Employm") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Office Address</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_OffAdd"><%#Eval("su.Mother_OffAdd") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Mother's Nature of Business</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Mother_NatBus"><%#Eval("su.Mother_Natbus") %></asp:Label></p>
                                </div>
                            </div>


                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Father's Info</h3>
                                </div>
                                <div class="box-body">
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Name</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_FullName"><%#Eval("su.Father_FullName") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Age</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_Age"><%#Eval("su.Father_Age") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's BirthPlace</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_BirthPlace"><%#Eval("su.Father_BirthPlace") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Nationality</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_Natl"><%#Eval("su.Father_Natl") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Religion</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_Religion"><%#Eval("su.Father_Religion") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Home Address</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_HomeAdd"><%#Eval("su.Father_HomeAdd") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Phone Number</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_PhoneNo"><%#Eval("su.Father_PhoneNo") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Educational Status</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_EduStat"><%#Eval("su.Father_EduStat") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's School Graduated</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_SchoolGrad"><%#Eval("su.Father_SchoolGrad") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Employment</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_Employm"><%#Eval("su.Father_Employm") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Office Address</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_OffAdd"><%#Eval("su.Father_OffAdd") %></asp:Label></p>
                                    <hr />
                                    <strong><i class="fa fa-pencil margin-r-5"></i>Father's Nature of Business</strong>
                                    <p>
                                        <asp:Label runat="server" ID="Father_NatBus"><%#Eval("su.Father_NatBus") %></asp:Label></p>
                                </div>
                            </div>



                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

