using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Student_Portal_Default : System.Web.UI.Page
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
su.Father_PhoneNo,su.Father_EduStat,su.Father_SchoolGrad,su.Father_Employm,su.Mother_OffAdd,su.Father_NatBus from  STUDENT_MAIN su INNER JOIN  STUDENT_STATUS ST ON ST.Status_ID=su.Status_ID
INNER JOIN SECTION  SE ON SE.Section_ID = su.Section_ID WHERE su.Student_ID=@SID";
            using (SqlCommand com = new SqlCommand(cheese, cake))
            {
                com.Parameters.AddWithValue("@SID", Session["student_id"].ToString());
                using (SqlDataReader dr = com.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        First_Name.text = dr["First_Name"].ToString();
                        Middle_Name.text = dr["Middle_Name"].ToString();
                        Last_Name.text = dr["Last_Name"].ToString();
                        Gender.text = dr["Gender"].ToString();
                        Year_Level.text = dr["Year_Level"].ToString();
                        Status.text = dr["Status_Desc"].ToString();
                        City.text = dr["City"].ToString();
                        Brngy.text = dr["Brngy"].ToString();
                        Municipality.text = dr["Municipality"].ToString();
                        Street.text = dr["Street"].ToString();
                        Prov_Add.text = dr["Prov_Add"].ToString();
                        Birth_Date.text = dr["Birth_Date"].ToString();
                        Birth_Place.text = dr["Birth_Place"].ToString();
                        Religion.text = dr["Religion"].ToString();
                        Bapt_Date.text = dr["Bapt_Date"].ToString();
                        Bapt_Place.text = dr["Bapt_Place"].ToString();
                        Nationality.text = dr["Nationality"].ToString();
                        Section.text = dr["Section_Name"].ToString();
                        User_ID.text = dr["User_ID"].ToString();
                        Prev_School.text = dr["Prev_School"].ToString();
                        Prev_SY.text = dr["Prev_SY"].ToString();
                        Prev_SchoolAdd.text = dr["Prev_SchoolAdd"].ToString();
                        Significant_Awards.text = dr["Significant_Awards"].ToString();
                        Extra_CurricularAct.text = dr["Extra_CurricularAct"].ToString();
                        Hobbies.text = dr["Hobbies"].ToString();
                        Place_Traveled.text = dr["Place_Traveled"].ToString();
                        Mother_FullName.text = dr["Mother_FullName"].ToString();
                        Mother_Age.text = dr["Mother_Age"].ToString();
                        Mother_BirthPlace.text = dr["Mother_Birth_Place"].ToString();
                        Mother_Natl.text = dr["Mother_Natl"].ToString();
                        Mother_Religion.text = dr["Mother_Religion"].ToString();
                        Mother_HomeAdd.text = dr["Mother_HomeAdd"].ToString();
                        Mother_PhoneNo.text = dr["Mother_PhoneNo"].ToString();
                        Mother_EduStat.text = dr["Mother_EduStat"].ToString();
                        Mother_SchoolGrad.text = dr["Mother_SchoolGrad"].ToString();
                        Mother_Employm.text = dr["Mother_Employm"].ToString();
                        Mother_OffAdd.text = dr["Mother_OffAdd"].ToString();
                        Mother_NatBus.text = dr["Mother_NatBus"].ToString();
                        Father_FullName.text = dr["Father_FullName"].ToString();
                        Father_Age.text = dr["Father_Age"].ToString();
                        Father_BirthPlace.text = dr["Father_BirthPlace"].ToString();
                        Father_Natl.text = dr["Father_Natl"].ToString();
                        Father_Religion.text = dr["Father_Religion"].ToString();
                        Father_HomeAdd.text = dr["Father_HomeAdd"].ToString();
                        Father_PhoneNo.text = dr["Father_PhoneNo"].ToString();
                        Father_EduStat.text = dr["Father_EduStat"].ToString();
                        Father_SchoolGrad.text = dr["Father_SchoolGrad"].ToString();
                        Father_Employm.text = dr["Father_Employm"].ToString();
                        Father_OffAdd.text = dr["Father_OffAdd"].ToString();
                        Father_NatBus.text = dr["Father_NatBus"].ToString();

                    }
                }
            }
           
        }
    }
}