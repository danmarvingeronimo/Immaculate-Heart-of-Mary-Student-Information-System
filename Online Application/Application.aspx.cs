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


            //string Takanashi = "EXECUTE AddNewStudentRecordPending";

            //FOR SPECIFIC CODE (IN-LINE)

            string Takanashi = @"INSERT INTO STUDENT_MAIN (First_Name, Middle_Name, Last_Name, Status_ID,
                                                          City, Brngy, Municipality, 
                                                          Street, Prov_Add, Birth_Date,
                                                          Birth_Place, Religion, Bapt_Date, 
                                                          Bapt_Place, Nationality)

                               VALUES (@First_Name, @Middle_Name, @Last_Name, @Status_ID,
                                       @City, @Brngy, @Municipality, 
                                       @Street, @Prov_Add, @Birth_Date, 
                                       @Birth_Place, @Religion, @Bapt_Date, 
                                       @Bapt_Place, @Nationality)";


            //NOT WORKING

            //string Takanashi = @"INSERT INTO STUDENT_MAIN VALUES 
            //            (First_Name=@First_Name, Middle_Name=@Middle_Name, Last_Name=@Last_Name,
            //             City=@City, Brngy=@Brngy, Municipality=@Municipality,
            //             Street=@Street, Prov_Add=@Prov_Add, Birth_Date=@Birth_Date,
            //             Birth_Place=@Birth_Place, Religion=@Religion, Bapt_Date=@Bapt_Date,
            //             Bapt_Place=@Bapt_Place, Nationality=@Nationality)";



            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@First_Name", txtFN.Text);
                WickedEye.Parameters.AddWithValue("@Middle_Name", txtMN.Text);
                WickedEye.Parameters.AddWithValue("@Last_Name", txtLN.Text);

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

                Response.Write("<script>alert('Application successfully sent!');</script>");
                Response.Redirect("Main.aspx");

            }
        }
    }
}