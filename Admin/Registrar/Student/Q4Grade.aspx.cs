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
    //Paki note kung tama tong nasa baba kasi sa php ganian mag
    //instanciate ng double kasi minsan may 0.0d pa akong nakikita
    //so pa double check nalang
    double gradeAve = 0.0;
    double grade = 0.0;
    double ave = 0.0;
    int count = 0;


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

                    ave = gradeAve / count;
                    //This Should Work <3
                    lblave.Text = ave.ToString();


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
                                    SUBJECT_MAIN S ON G.Subject_ID = S.Subject_ID WHERE G.Student_ID = @SID AND G.Quarter = 4";
                

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

    protected void lvStudents_ItemDataBound(object sender, ListViewItemEventArgs e)
    {


        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            // Display the e-mail address in italics.

            Label GradeVal = (Label)e.Item.FindControl("GradeVal");
            count++;
            grade = double.Parse(GradeVal.Text);
            gradeAve = gradeAve + grade;

        }



    }




}