<%@ Page Title="" Language="C#" MasterPageFile="~/Student Portal/Student.master" AutoEventWireup="true" CodeFile="StudentProfile.aspx.cs" Inherits="Student_Portal_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    <i class="fa fa-user"></i>Welcome to your Student Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <h1>
        <asp:Label runat="server" ID="First_Name"><%#Eval("su.First_Name") %></asp:Label><br />
        <asp:Label runat="server" ID="Middle_Name"><%#Eval("su.Middle_Name")%> /asp:Label><br />
        <asp:Label runat="server" ID="Last_Name"> <%#Eval("su.Last_Name") %></asp:Label><br />
    </h1>
    <body>
        <asp:Label runat="server" ID="Gender">Gender:<%#Eval("su.Gender") %></asp:Label><br />
        <asp:Label runat="server" ID="Year_Level">Year Level:<%#Eval("su.Year_Level") %></asp:Label><br />
        <asp:Label runat="server" ID="Status">Status:<%#Eval("ST.Status_Desc") %></asp:Label><br />
        <asp:Label runat="server" ID="City">City:<%#Eval("su.City") %></asp:Label><br />
        <asp:Label runat="server" ID="Brngy">Barangay:<%#Eval("su.Brngry") %></asp:Label><br />
        <asp:Label runat="server" ID="Municipality">Municipality:<%#Eval("su.Municipality") %></asp:Label><br />
        <asp:Label runat="server" ID="Street">Street:<%#Eval("su.Street") %></asp:Label><br />
        <asp:Label runat="server" ID="Prov_Add">Provincial Address:<%#Eval("su.Prov_Add") %></asp:Label><br />
        <asp:Label runat="server" ID="Birth_Date"><%#Eval("su.Birth_Date") %></asp:Label><br />
        <asp:Label runat="server" ID="Birth_Place"><%#Eval("su.Birth_Place") %></asp:Label><br />
        <asp:Label runat="server" ID="Religion"><%#Eval("su.Religion") %></asp:Label><br />
        <asp:Label runat="server" ID="Bapt_Date"><%#Eval("su.Bapt_Date") %></asp:Label><br />
        <asp:Label runat="server" ID="Bapt_Place"><%#Eval("su.Bapt_Place") %></asp:Label><br />
        <asp:Label runat="server" ID="Nationality"><%#Eval("su.Nationality") %></asp:Label><br />
        <asp:Label runat="server" ID="Section"><%#Eval("SE.Section_Name") %></asp:Label><br />
        <asp:Label runat="server" ID="User_ID"><%#Eval("su.User_ID") %></asp:Label><br />
        <asp:Label runat="server" ID="Prev_School"><%#Eval("su.Prev_School") %></asp:Label><br />
        <asp:Label runat="server" ID="Prev_SY"><%#Eval("su.Prev_SY") %></asp:Label><br />
        <asp:Label runat="server" ID="Prev_SchoolAdd"><%#Eval("su.Prev_SchoolAdd") %></asp:Label><br />
        <asp:Label runat="server" ID="Significant_Awards"><%#Eval("su.Significant_Awards") %></asp:Label><br />
        <asp:Label runat="server" ID="Extra_CurricularAct"><%#Eval("su.Extra_CurricularAct") %></asp:Label><br />
        <asp:Label runat="server" ID="Hobbies"><%#Eval("su.Hobbies") %></asp:Label><br />
       <asp:Label runat="server" ID="Place_Traveled"><%#Eval("su.Place_Traveled") %></asp:Label><br />

        <h2>
            <asp:Label runat="server" ID="Mother_FullName">Mother's Name:<%#Eval("su.Mother_FullName") %></asp:Label><br />

        </h2>
           <asp:Label runat="server" ID="Mother_Age">Mother's Age:<%#Eval("su.Mother_Age") %></asp:Label><br />
           <asp:Label runat="server" ID="Mother_BirthPlace">Mother's Birthplace:<%#Eval("su.Mother_BirthPlace") %></asp:Label><br />
            <asp:Label runat="server" ID="Mother_Natl">Mother's Nationality:<%#Eval("su.Mother_Natl") %></asp:Label><br />
           <asp:Label runat="server" ID="Mother_Religion">Mother's Religion:<%#Eval("su.Mother_Religion") %></asp:Label><br />
        <asp:Label runat="server" ID="Mother_HomeAdd">Mother's Home Address:<%#Eval("su.Mother_HomeAdd") %></asp:Label><br />
        <asp:Label runat="server" ID="Mother_PhoneNo">Mother's Phone Number:<%#Eval("su.Mother_PhoneNo") %></asp:Label><br />
        <asp:Label runat="server" ID="Mother_EduStat">Mother's Educational Status:<%#Eval("su.Mother_EduStat") %></asp:Label><br />
        <asp:Label runat="server" ID="Mother_SchoolGrad">Mother's School She Graduated:<%#Eval("su.Mother_SchoolGrad") %></asp:Label><br />
        <asp:Label runat="server" ID="Mother_Employm">Mother's Employment:<%#Eval("su.Mother_Employm") %></asp:Label><br />
        <asp:Label runat="server" ID="Mother_OffAdd"><%#Eval("su.Mother_OffAdd") %></asp:Label><br />
        <asp:Label runat="server" ID="Mother_NatBus">Mother's Nature of Business:<%#Eval("su.Mother_Natbus") %></asp:Label><br />
        <h3>
            <asp:Label runat="server" ID="Father_FullName">Father's Name<%#Eval("su.Father_FullName") %></asp:Label><br />
        </h3>
        <asp:Label runat="server" ID="Father_Age">Father's Age:<%#Eval("su.Father_Age") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_BirthPlace">Father's BirthPlace:<%#Eval("su.Father_BirthPlace") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_Natl">Father's Nationality:<%#Eval("su.Father_Natl") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_Religion">Father's Religion:<%#Eval("su.Father_Religion") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_HomeAdd">Father's Home Address:<%#Eval("su.Father_HomeAdd") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_PhoneNo">Father's Phone Number:<%#Eval("su.Father_PhoneNo") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_EduStat">Father's Educational Status:<%#Eval("su.Father_EduStat") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_SchoolGrad">Father's School Graduated:<%#Eval("su.Father_SchoolGrad") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_Employm">Father's Employment:<%#Eval("su.Father_Employm") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_OffAdd">Father's Office Address:<%#Eval("su.Father_OffAdd") %></asp:Label><br />
        <asp:Label runat="server" ID="Father_NatBus">Father's Nature of Business:<%#Eval("su.Father_NatBus") %></asp:Label><br />
    </body>
</asp:Content>

