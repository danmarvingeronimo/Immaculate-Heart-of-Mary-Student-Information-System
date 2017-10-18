using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


// Dan Marvin Geronimo

public partial class Online_Application_Application : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    int StudentID()
    {
        int StudentID = 0;

        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();

            string Takanashi = @"SELECT Student_ID FROM STUDENT_MAIN WHERE Year_level=@Year_level AND First_Name=@FN AND Middle_Name=@MN AND
                                Last_Name=@LN AND Gender=@Gender AND Status_ID=@Status_ID AND City=@City AND Brngy=@Brngy AND Municipality=@Municipality AND
                                Street=@Street AND Prov_Add=@ProvAdd AND Birth_Date=@BD AND Birth_Place=@BP AND Religion=@Religion AND Bapt_Date=@BaptDate 
                                AND Bapt_Place=@BaptPlace AND Nationality=@Nat";

            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Year_level", txtGradelvl.Text);

                WickedEye.Parameters.AddWithValue("@FN", txtFN.Text);
                WickedEye.Parameters.AddWithValue("@MN", txtMN.Text);
                WickedEye.Parameters.AddWithValue("@LN", txtLN.Text);
                WickedEye.Parameters.AddWithValue("@Gender", txtGender.Text);
                WickedEye.Parameters.AddWithValue("@Status_ID", 3);


                WickedEye.Parameters.AddWithValue("@City", txtCity.Text);
                WickedEye.Parameters.AddWithValue("@Brngy", txtBrngy.Text);
                WickedEye.Parameters.AddWithValue("@Municipality", txtMun.Text);

                WickedEye.Parameters.AddWithValue("@Street", txtStreet.Text);
                WickedEye.Parameters.AddWithValue("@ProvAdd", txtProvAdd.Text);
                WickedEye.Parameters.AddWithValue("@BD", txtBirthDate.Text);

                WickedEye.Parameters.AddWithValue("@BP", txtBirthPlace.Text);
                WickedEye.Parameters.AddWithValue("@Religion", txtReligion.Text);
                WickedEye.Parameters.AddWithValue("@BaptDate", txtBaptDate.Text);

                WickedEye.Parameters.AddWithValue("@BaptPlace", txtBaptPlace.Text);
                WickedEye.Parameters.AddWithValue("@Nat", txtNat.Text);

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    if (Chuu2.HasRows)
                    {
                        StudentID = int.Parse(Chuu2["Student_ID"].ToString());
                    }
                }

                Rikka.Close();

            }

        }


        return StudentID;
    }


    void InsertStudent()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();

            string Takanashi = @"INSERT INTO STUDENT_MAIN (Year_level, First_Name, Middle_Name, Last_Name, Gender, Status_ID,
                                                          City, Brngy, Municipality, 
                                                          Street, Prov_Add, Birth_Date,
                                                          Birth_Place, Religion, Bapt_Date, 
                                                          Bapt_Place, Nationality)

                                VALUES (@Year_level, @First_Name, @Middle_Name, @Last_Name, @Gender, @Status_ID,
                                       @City, @Brngy, @Municipality, 
                                       @Street, @Prov_Add, @Birth_Date, 
                                       @Birth_Place, @Religion, @Bapt_Date, 
                                       @Bapt_Place, @Nationality)";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Year_level", txtGradelvl.Text);


                WickedEye.Parameters.AddWithValue("@First_Name", txtFN.Text);
                WickedEye.Parameters.AddWithValue("@Middle_Name", txtMN.Text);
                WickedEye.Parameters.AddWithValue("@Last_Name", txtLN.Text);
                WickedEye.Parameters.AddWithValue("@Gender", txtGender.Text);
                WickedEye.Parameters.AddWithValue("@Status_ID", 3);


                WickedEye.Parameters.AddWithValue("@City", txtCity.Text);
                WickedEye.Parameters.AddWithValue("@Brngy", txtBrngy.Text);
                WickedEye.Parameters.AddWithValue("@Municipality", txtMun.Text);

                WickedEye.Parameters.AddWithValue("@Street", txtStreet.Text);
                WickedEye.Parameters.AddWithValue("@Prov_Add", txtProvAdd.Text);
                WickedEye.Parameters.AddWithValue("@Birth_Date", txtBirthDate.Text);

                WickedEye.Parameters.AddWithValue("@Birth_Place", txtBirthPlace.Text);
                WickedEye.Parameters.AddWithValue("@Religion", txtReligion.Text);
                WickedEye.Parameters.AddWithValue("@Bapt_Date", txtBaptDate.Text);

                WickedEye.Parameters.AddWithValue("@Bapt_Place", txtBaptPlace.Text);
                WickedEye.Parameters.AddWithValue("@Nationality", txtNat.Text);




                WickedEye.ExecuteNonQuery();

                Rikka.Close();

            }
        }



        
    }

    void InsertParentInfo(int StudentID)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"INSERT INTO PARENT_INFO(Student_ID, Mother_FullName, Mother_Age, Mother_BirthPlace, Mother_Natl, Mother_Religion,
                                                          Mother_HomeAdd, Mother_PhoneNo, Mother_EduStat,
                                                          Mother_SchoolGrad, Mother_Employm, Mother_OffAdd,
                                                          Mother_NatBus,


                                                          Father_FullName, Father_Age, Father_BirthPlace, Father_Natl, Father_Religion,
                                                          Father_HomeAdd, Father_PhoneNo, Father_EduStat,
                                                          Father_SchoolGrad, Father_Employm, Father_OffAdd,
                                                          Father_NatBus)

                                                  VALUES(@Student_ID, @Mother_FullName, @Mother_Age, @Mother_BirthPlace, @Mother_Natl, @Mother_Religion,
                                                          @Mother_HomeAdd, @Mother_PhoneNo, @Mother_EduStat,
                                                          @Mother_SchoolGrad, @Mother_Employm, @Mother_OffAdd,
                                                          @Mother_NatBus,


                                                          @Father_FullName, @Father_Age, @Father_BirthPlace, @Father_Natl, @Father_Religion,
                                                          @Father_HomeAdd, @Father_PhoneNo, @Father_EduStat,
                                                          @Father_SchoolGrad, @Father_Employm, @Father_OffAdd,
                                                          @Father_NatBus)";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Student_ID", StudentID.ToString());
                
                //Mother

                WickedEye.Parameters.AddWithValue("@Mother_FullName", txtMotherFN.Text);
                WickedEye.Parameters.AddWithValue("@Mother_Age", txtMotherAge.Text);
                WickedEye.Parameters.AddWithValue("@Mother_BirthPlace", txtMotherBP.Text);

                WickedEye.Parameters.AddWithValue("@Mother_Natl", txtMotherNat.Text);
                WickedEye.Parameters.AddWithValue("@Mother_Religion", txtMotherReligion.Text);
                WickedEye.Parameters.AddWithValue("@Mother_HomeAdd", txtMotherHomeAdd.Text);

                WickedEye.Parameters.AddWithValue("@Mother_PhoneNo", txtMotherPhoneNo.Text);
                WickedEye.Parameters.AddWithValue("@Mother_EduStat", txtMotherEduStat.Text);
                WickedEye.Parameters.AddWithValue("@Mother_SchoolGrad", txtMotherSchoolGrad.Text);

                WickedEye.Parameters.AddWithValue("@Mother_Employm", txtMotherEmployem.Text);
                WickedEye.Parameters.AddWithValue("@Mother_OffAdd", txtMotherOfficeAdd.Text);
                WickedEye.Parameters.AddWithValue("@Mother_NatBus", txtMotherNatureBus.Text);

                //Father

                WickedEye.Parameters.AddWithValue("@Father_FullName", txtFatherFN.Text);
                WickedEye.Parameters.AddWithValue("@Father_Age", txtFatherAge.Text);
                WickedEye.Parameters.AddWithValue("@Father_BirthPlace", txtFatheBirthplace.Text);

                WickedEye.Parameters.AddWithValue("@Father_Natl", txtFatherNat.Text);
                WickedEye.Parameters.AddWithValue("@Father_Religion", txtFatherReligion.Text);
                WickedEye.Parameters.AddWithValue("@Father_HomeAdd", txtFatherHomeAdd.Text);

                WickedEye.Parameters.AddWithValue("@Father_PhoneNo", txtxfatherPhoneNo.Text);
                WickedEye.Parameters.AddWithValue("@Father_EduStat", txtFatheEduStat.Text);
                WickedEye.Parameters.AddWithValue("@Father_SchoolGrad", txtFatheSchoolGrad.Text);

                WickedEye.Parameters.AddWithValue("@Father_Employm", txtFatherEmploy.Text);
                WickedEye.Parameters.AddWithValue("@Father_OffAdd", txtFatheOffAdd.Text);
                WickedEye.Parameters.AddWithValue("@Father_NatBus", txtFatheNatBus.Text);



                WickedEye.ExecuteNonQuery();
                Rikka.Close();

            }
        }
    }

    void InsertOtherInfo(int StudentID)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"INSERT INTO STUDENT_OTHER_INFO(Student_ID, Prev_School, Prev_SY, Prev_SchoolAdd, Significant_Awards,
                                                          Extra_CurrAct, Hobbies, Places_Traveled)

                               VALUES(@Student_ID, @Prev_School, @Prev_SY, @Prev_SchoolAdd, @Significant_Awards,
                                                          @Extra_CurrAct, @Hobbies, @Places_Traveled)";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Student_ID", StudentID.ToString());

                //Student Other Info
                WickedEye.Parameters.AddWithValue("@Prev_School", txtStudPrevSchool.Text);
                WickedEye.Parameters.AddWithValue("@Prev_SY", txtStudPrevSchoolYear.Text);
                WickedEye.Parameters.AddWithValue("@Prev_SchoolAdd", txtStudPrevSchoolAdd.Text);

                WickedEye.Parameters.AddWithValue("@Significant_Awards", txtStudSigAward.Text);
                WickedEye.Parameters.AddWithValue("@Extra_CurrAct", txtStudExtraCurAct.Text);
                WickedEye.Parameters.AddWithValue("@Hobbies", txtStudHobbies.Text);

                WickedEye.Parameters.AddWithValue("@Places_Traveled", txtPlaceTravel.Text);


                
                WickedEye.ExecuteNonQuery();
                Rikka.Close();

            }
        }
    }

    protected void btnApply_Click(object sender, EventArgs e)
    {
        InsertStudent();
        StudentID();
        InsertParentInfo(StudentID());
        InsertOtherInfo(StudentID());
    }
}