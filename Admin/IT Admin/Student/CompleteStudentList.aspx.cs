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
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ITAdminViewSection.aspx");
        }
        else
        {
            int secid = 0;
            bool validsecid = int.TryParse(Request.QueryString["ID"].ToString(), out secid);

            if (validsecid)
            {
                if (!IsPostBack)
                {
                    GetID(secid);
                    GetStudents(secid);

                }
            }
            else
            {
                Response.Redirect("ITAdminViewSection.aspx");
            }
        }

    }




    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Year_Level + ' - ' + Section_Name AS 'Section' FROM SECTION 
                           WHERE Section_ID=@SID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@SID", ID);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ltSID.Text = dr["Section"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ITAdminViewSection.aspx");
                    }
                }
            }
        }
    }

    void GetStudents(int ID)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Stud.Student_ID, Stud.Last_Name , Stud.First_Name , Stud.Middle_Name, Stud.User_ID ,Stat.Status_Desc FROM STUDENT_MAIN Stud 
                                 INNER JOIN STUDENT_STATUS Stat ON Stud.Status_ID = Stat.Status_ID WHERE Section_ID=@SID";

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                Chuu2Koi.Parameters.AddWithValue("@SID", ID);
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

}