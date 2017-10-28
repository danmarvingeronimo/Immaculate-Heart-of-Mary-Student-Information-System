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
            Response.Redirect("CompleteStudentList.aspx");
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
                    GetGrade(secid);

                }
            }
            else
            {
                Response.Redirect("CompleteStudentList.aspx");
            }
        }

    }




    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Last_Name + ', ' + First_Name + ' ' + Middle_Name AS 'Student' FROM STUDENT_MAIN
                           WHERE Student_ID=@SID ";
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
                            ltSID.Text = dr["Student"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("CompleteStudentList.aspx");
                    }
                }
            }
        }
    }

    void GetGrade(int ID)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT G.Grade_ID, G.Grade_Value, S.Subject_Name FROM GRADE_INFO G INNER JOIN
                                SUBJECT_MAIN S ON G.Subject_ID = S.Subject_ID WHERE G.Student_ID = @SID AND G.Quarter = 2";
                

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                Chuu2Koi.Parameters.AddWithValue("@SID", ID);
                using (SqlDataAdapter Nibutani = new SqlDataAdapter(Chuu2Koi))
                {
                    DataSet Kumin = new DataSet();
                    Nibutani.Fill(Kumin, "GRADE_INFO");

                    lvStudents.DataSource = Kumin;
                    lvStudents.DataBind();


                }
            }
        }
    }


    
}