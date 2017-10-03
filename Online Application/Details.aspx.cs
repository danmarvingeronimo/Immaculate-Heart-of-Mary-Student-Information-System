using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

//DAN MARVIN GERONIMO

public partial class Online_Application_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewAdmin.aspx");
        }
        else
        {
            int secid = 0;
            bool validsecid = int.TryParse(Request.QueryString["ID"].ToString(), out secid);

            if (validsecid)
            {
                if (!IsPostBack)
                {
                    //GetData(secid);
                }
            }
            else
            {
                Response.Redirect("ViewAdmin.aspx");
            }
        }
    }
    //void GetData(int ID)
    //{
    //    using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
    //    {
    //        string Takanashi = @"SELECT Student_ID, User_ID, First_Name, Middle_Name, Last_Name FROM ADMIN_MAIN WHERE Student_ID=@Student_ID";
    //        Rikka.Open();
    //        using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
    //        {
    //            WickedEye.Parameters.AddWithValue("@Student_ID", ID);

    //            using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
    //            {
    //                if (Chuu2.HasRows)
    //                {
    //                    while (Chuu2.Read())
    //                    {
    //                        ltID.Text = Chuu2["Admin_ID"].ToString();
    //                        txtUID.Text = Chuu2["User_ID"].ToString();
    //                        txtFN.Text = Chuu2["First_Name"].ToString();
    //                        txtMN.Text = Chuu2["Middle_Name"].ToString();
    //                        txtLN.Text = Chuu2["Last_Name"].ToString();
    //                    }
    //                }
    //                else
    //                {
    //                    Response.Redirect("ViewSection.aspx");
    //                }
    //            }
    //        }
    //    }
    //}

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();

            //FOR SPECIFIC CODE

            string Takanashi = @"INSERT INTO STUDENT_OTHER_INFO (Prev_School, Prev_SY, Prev_SchoolAdd, Significant_Awards,
                                                          Extra_CurrAct, Hobbies, Places_Traveled)

                               VALUES (@Prev_School, @Prev_SY, @Prev_SchoolAdd, @Significant_Awards,
                                                          @Extra_CurrAct, @Hobbies, @Places_Traveled)


                                INSERT INTO PARENT_INFO (Mother_FullName, Mother_Age, Mother_BirthPlace, Mother_Natl, Mother_Religion,
                                                          Mother_HomeAdd, Mother_PhoneNo, Mother_EduStat, 
                                                          Mother_SchoolGrad, Mother_Employm, Mother_OffAdd,
                                                          Mother_NatBus,


                                                          Father_FullName, Father_Age, Father_BirthPlace, Father_Natl, Father_Religion,
                                                          Father_HomeAdd, Father_PhoneNo, Father_EduStat, 
                                                          Father_SchoolGrad, Father_Employm, Father_OffAdd,
                                                          Father_NatBus)

                                                  VALUES (@Mother_FullName, @Mother_Age, @Mother_BirthPlace, @Mother_Natl, @Mother_Religion,
                                                          @Mother_HomeAdd, @Mother_PhoneNo, @Mother_EduStat, 
                                                          @Mother_SchoolGrad, @Mother_Employm, @Mother_OffAdd,
                                                          @Mother_NatBus,
                                                          
                                                          
                                                          @Father_FullName, @Father_Age, @Father_BirthPlace, @Father_Natl, @Father_Religion,
                                                          @Father_HomeAdd, @Father_PhoneNo, @Father_EduStat, 
                                                          @Father_SchoolGrad, @Father_Employm, @Father_OffAdd,
                                                          @Father_NatBus)";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {

                //Student Other Info
                WickedEye.Parameters.AddWithValue("@Prev_School", txtStudPrevSchool.Text);
                WickedEye.Parameters.AddWithValue("@Prev_SY", txtStudPrevSchoolYear.Text);
                WickedEye.Parameters.AddWithValue("@Prev_SchoolAdd", txtStudPrevSchoolAdd.Text);

                WickedEye.Parameters.AddWithValue("@Significant_Awards", txtStudSigAward.Text);
                WickedEye.Parameters.AddWithValue("@Extra_CurrAct", txtStudExtraCurAct.Text);
                WickedEye.Parameters.AddWithValue("@Hobbies", txtStudHobbies.Text);

                WickedEye.Parameters.AddWithValue("@Places_Traveled", txtPlaceTravel.Text);

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
                Response.Redirect("~/Main.aspx");


            }
        }
    }
}