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

   


    protected void btnApply_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
         
            Rikka.Open();

            string Takanashi = @"INSERT INTO STUDENT_MAIN (Section_ID, Year_level, First_Name, Middle_Name, 
                                                          Last_Name, Gender, Status_ID,
                                                          City, Brngy, Municipality, 
                                                          Street, Prov_Add, Birth_Date,
                                                          Birth_Place, Religion, Bapt_Date, 
                                                          Bapt_Place, Nationality, Prev_School, 
                                                          Prev_SY, Prev_SchoolAdd, Significant_Awards,
                                                          Extra_CurricularAct, Hobbies, Places_Traveled, 

                                                          Mother_FullName, Mother_Age, Mother_BirthPlace, 
                                                          Mother_Natl, Mother_Religion, Mother_HomeAdd, 
                                                          Mother_PhoneNo, Mother_EduStat, Mother_SchoolGrad, 
                                                          Mother_Employm, Mother_OffAdd, Mother_NatBus,


                                                          Father_FullName, Father_Age, Father_BirthPlace, 
                                                          Father_Natl, Father_Religion, Father_HomeAdd, 
                                                          Father_PhoneNo, Father_EduStat, Father_SchoolGrad, 
                                                          Father_Employm, Father_OffAdd, Father_NatBus)

                                                  VALUES (@Section_ID, @Year_level, @First_Name, @Middle_Name, 
                                                          @Last_Name, @Gender, @Status_ID,
                                                          @City, @Brngy, @Municipality, 
                                                          @Street, @Prov_Add, @Birth_Date, 
                                                          @Birth_Place, @Religion, @Bapt_Date,
                                                          @Bapt_Place, @Nationality, @Prev_School,
                                                          @Prev_SY, @Prev_SchoolAdd, @Significant_Awards, 
                                                          @Extra_CurricularAct, @Hobbies, @Places_Traveled, 
                                       
                                                          @Mother_FullName, @Mother_Age, @Mother_BirthPlace, 
                                                          @Mother_Natl, @Mother_Religion, @Mother_HomeAdd, 
                                                          @Mother_PhoneNo, @Mother_EduStat, @Mother_SchoolGrad, 
                                                          @Mother_Employm, @Mother_OffAdd, @Mother_NatBus,


                                                          @Father_FullName, @Father_Age, @Father_BirthPlace, 
                                                          @Father_Natl, @Father_Religion, @Father_HomeAdd, 
                                                          @Father_PhoneNo, @Father_EduStat, @Father_SchoolGrad, 
                                                          @Father_Employm, @Father_OffAdd, @Father_NatBus)";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {

                WickedEye.Parameters.AddWithValue("@Year_level", DropDownList7.SelectedItem.Value);
                WickedEye.Parameters.AddWithValue("@Section_ID", 21);

                WickedEye.Parameters.AddWithValue("@First_Name", txtFN.Text);
                WickedEye.Parameters.AddWithValue("@Middle_Name", txtMN.Text);
                WickedEye.Parameters.AddWithValue("@Last_Name", txtLN.Text);
                WickedEye.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
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
                WickedEye.Parameters.AddWithValue("@Nationality", DropDownList4.SelectedItem.Value);

                //Student Other Info
                WickedEye.Parameters.AddWithValue("@Prev_School", txtStudPrevSchool.Text);
                WickedEye.Parameters.AddWithValue("@Prev_SY", txtStudPrevSchoolYear.Text);
                WickedEye.Parameters.AddWithValue("@Prev_SchoolAdd", txtStudPrevSchoolAdd.Text);

                WickedEye.Parameters.AddWithValue("@Significant_Awards", txtStudSigAward.Text);

                WickedEye.Parameters.AddWithValue("@Extra_CurricularAct", txtStudExtraCurAct.Text);

                WickedEye.Parameters.AddWithValue("@Extra_CurrAct", txtStudExtraCurAct.Text);

                WickedEye.Parameters.AddWithValue("@Hobbies", txtStudHobbies.Text);

                WickedEye.Parameters.AddWithValue("@Places_Traveled", txtPlaceTravel.Text);

                //Mother

                WickedEye.Parameters.AddWithValue("@Mother_FullName", txtMotherFN.Text);
                WickedEye.Parameters.AddWithValue("@Mother_Age", txtMotherAge.Text);
                WickedEye.Parameters.AddWithValue("@Mother_BirthPlace", txtMotherBP.Text);

                WickedEye.Parameters.AddWithValue("@Mother_Natl", DropDownList6.SelectedItem.Value);
                WickedEye.Parameters.AddWithValue("@Mother_Religion", txtMotherReligion.Text);
                WickedEye.Parameters.AddWithValue("@Mother_HomeAdd", txtMotherHomeAdd.Text);

                WickedEye.Parameters.AddWithValue("@Mother_PhoneNo", txtMotherPhoneNo.Text);
                WickedEye.Parameters.AddWithValue("@Mother_EduStat", DropDownList3.SelectedItem.Value);
                WickedEye.Parameters.AddWithValue("@Mother_SchoolGrad", txtMotherSchoolGrad.Text);

                WickedEye.Parameters.AddWithValue("@Mother_Employm", txtMotherEmployem.Text);
                WickedEye.Parameters.AddWithValue("@Mother_OffAdd", txtMotherOfficeAdd.Text);
                WickedEye.Parameters.AddWithValue("@Mother_NatBus", txtMotherNatureBus.Text);

                //Father

                WickedEye.Parameters.AddWithValue("@Father_FullName", txtFatherFN.Text);
                WickedEye.Parameters.AddWithValue("@Father_Age", txtFatherAge.Text);
                WickedEye.Parameters.AddWithValue("@Father_BirthPlace", txtFatheBirthplace.Text);

                WickedEye.Parameters.AddWithValue("@Father_Natl", DropDownList5.SelectedItem.Value);
                WickedEye.Parameters.AddWithValue("@Father_Religion", txtFatherReligion.Text);
                WickedEye.Parameters.AddWithValue("@Father_HomeAdd", txtFatherHomeAdd.Text);

                WickedEye.Parameters.AddWithValue("@Father_PhoneNo", txtxfatherPhoneNo.Text);
                WickedEye.Parameters.AddWithValue("@Father_EduStat", DropDownList2.SelectedItem.Value);
                WickedEye.Parameters.AddWithValue("@Father_SchoolGrad", txtFatheSchoolGrad.Text);

                WickedEye.Parameters.AddWithValue("@Father_Employm", txtFatherEmploy.Text);
                WickedEye.Parameters.AddWithValue("@Father_OffAdd", txtFatheOffAdd.Text);
                WickedEye.Parameters.AddWithValue("@Father_NatBus", txtFatheNatBus.Text);


          
                WickedEye.ExecuteNonQuery();
                Rikka.Close();
                Response.Redirect("Confirmation.aspx");
                
            }
        }
    }
}