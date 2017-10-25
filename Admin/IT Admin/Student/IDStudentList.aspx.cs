using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//DAN MARVIN GERONIMO

public partial class Admin_Admission_StudentList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetStudents();
        }
    }

    void GetStudents()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Stud.Student_ID, Stud.Last_Name , Stud.First_Name , Stud.Middle_Name, Stud.User_ID ,Stat.Status_Desc FROM STUDENT_MAIN Stud 
                                 INNER JOIN STUDENT_STATUS Stat ON Stud.Status_ID = Stat.Status_ID WHERE Stud.User_ID IS NULL AND Stud.Student_PW IS NULL;"; 

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                using (SqlDataAdapter Nibutani = new SqlDataAdapter(Chuu2Koi))
                {
                    DataSet Kumin = new DataSet();
                    Nibutani.Fill(Kumin, "STUDENT_MAIN");

                    lvStudents.DataSource = Kumin;
                    lvStudents.DataBind();


                }
            }
        }
    }

    protected void lvStudents_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
}