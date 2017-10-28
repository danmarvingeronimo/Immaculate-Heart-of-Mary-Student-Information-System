using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class StudentProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProfile();
        }

    }
    void GetProfile()
    {
        using (SqlConnection cake = new SqlConnection(Util.GetConnection()))
        {
            cake.Open();
            string cheese = @"SELECT su.First_Name,su.Middle_Name,su.Last_Name,su.Gender,su.Year_Level,ST.Status_Desc,su.City,su.Brngy,su.Municipality,su.Street,su.Prov_Add,
                              su.Birth_Date,su.Birth_Place,su.Religion,su.Bapt_Date,su.Bapt_Place,su.Nationality,SE.Section_Name,su.User_ID,su.Prev_School,su.Prev_SY,su.Prev_SchoolAdd,
 su.Significant_Awards,su.Extra_CurricularAct,su.Hobbies,su.Places_Traveled,su.Mother_FullName,su.Mother_Age,su.Mother_BirthPlace,su.Mother_Natl,su.Mother_Religion,su.Mother_HomeAdd,
 su.Mother_PhoneNo,su.Mother_EduStat,su.Mother_SchoolGrad,su.Mother_Employm,su.Mother_OffAdd,su.Mother_NatBus,su.Father_FullName,su.Father_Age,su.Father_BirthPlace,su.Father_Natl,su.Father_Religion,su.Father_HomeAdd,
su.Father_PhoneNo,su.Father_EduStat,su.Father_SchoolGrad,su.Father_Employm,su.Father_OffAdd,su.Father_NatBus from  STUDENT_MAIN su INNER JOIN  STUDENT_STATUS ST ON ST.Status_ID=su.Status_ID
INNER JOIN SECTION  SE ON SE.Section_ID = su.Section_ID WHERE su.Student_ID=@SID";
            using (SqlCommand com = new SqlCommand(cheese, cake))
            {
                com.Parameters.AddWithValue("@SID", Session["student_id"].ToString());
                using (SqlDataReader dr = com.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        First_Name.Text = dr["First_Name"].ToString();
                        Middle_Name.Text = dr["Middle_Name"].ToString();
                        Last_Name.Text = dr["Last_Name"].ToString();
                        Gender.Text = dr["Gender"].ToString();
                        Year_Level.Text = dr["Year_Level"].ToString();
                        Status.Text = dr["Status_Desc"].ToString();
                        City.Text = dr["City"].ToString();
                        Brngy.Text = dr["Brngy"].ToString();
                        Municipality.Text = dr["Municipality"].ToString();
                        Street.Text = dr["Street"].ToString();
                        Prov_Add.Text = dr["Prov_Add"].ToString();
                        Birth_Date.Text = dr["Birth_Date"].ToString();
                        Birth_Place.Text = dr["Birth_Place"].ToString();
                        Religion.Text = dr["Religion"].ToString();
                        Bapt_Date.Text = dr["Bapt_Date"].ToString();
                        Bapt_Place.Text = dr["Bapt_Place"].ToString();
                        Nationality.Text = dr["Nationality"].ToString();
                        Section.Text = dr["Section_Name"].ToString();
                        User_ID.Text = dr["User_ID"].ToString();
                        Prev_School.Text = dr["Prev_School"].ToString();
                        Prev_SY.Text = dr["Prev_SY"].ToString();
                        Prev_SchoolAdd.Text = dr["Prev_SchoolAdd"].ToString();
                        Significant_Awards.Text = dr["Significant_Awards"].ToString();
                        Extra_CurricularAct.Text = dr["Extra_CurricularAct"].ToString();
                        Hobbies.Text = dr["Hobbies"].ToString();
                        Place_Traveled.Text = dr["Places_Traveled"].ToString();
                        Mother_FullName.Text = dr["Mother_FullName"].ToString();
                        Mother_Age.Text = dr["Mother_Age"].ToString();
                        Mother_BirthPlace.Text = dr["Mother_BirthPlace"].ToString();
                        Mother_Natl.Text = dr["Mother_Natl"].ToString();
                        Mother_Religion.Text = dr["Mother_Religion"].ToString();
                        Mother_HomeAdd.Text = dr["Mother_HomeAdd"].ToString();
                        Mother_PhoneNo.Text = dr["Mother_PhoneNo"].ToString();
                        Mother_EduStat.Text = dr["Mother_EduStat"].ToString();
                        Mother_SchoolGrad.Text = dr["Mother_SchoolGrad"].ToString();
                        Mother_Employm.Text = dr["Mother_Employm"].ToString();
                        Mother_OffAdd.Text = dr["Mother_OffAdd"].ToString();
                        Mother_NatBus.Text = dr["Mother_NatBus"].ToString();
                        Father_FullName.Text = dr["Father_FullName"].ToString();
                        Father_Age.Text = dr["Father_Age"].ToString();
                        Father_BirthPlace.Text = dr["Father_BirthPlace"].ToString();
                        Father_Natl.Text = dr["Father_Natl"].ToString();
                        Father_Religion.Text = dr["Father_Religion"].ToString();
                        Father_HomeAdd.Text = dr["Father_HomeAdd"].ToString();
                        Father_PhoneNo.Text = dr["Father_PhoneNo"].ToString();
                        Father_EduStat.Text = dr["Father_EduStat"].ToString();
                        Father_SchoolGrad.Text = dr["Father_SchoolGrad"].ToString();
                        Father_Employm.Text = dr["Father_Employm"].ToString();
                        Father_OffAdd.Text = dr["Father_OffAdd"].ToString();
                        Father_NatBus.Text = dr["Father_NatBus"].ToString();

                    }
                }
            }
           
        }
    }
}