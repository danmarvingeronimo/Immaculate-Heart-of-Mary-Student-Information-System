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
            Response.Redirect("GradeViewSection.aspx");
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
                Response.Redirect("GradeViewSection.aspx");
            }
        }

    }

    public static int Yearlevel(int ID)
    {
        int Yearlevel = 0;
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @" SELECT Year_level FROM STUDENT_MAIN WHERE Student_ID=@SID";
            Rikka.Open();
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@SID", ID);
                using (SqlDataReader dr = WickedEye.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Yearlevel = int.Parse(dr["Year_level"].ToString());
                        }
                    }

                }
            }

        }

        return Yearlevel;
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
                        Response.Redirect("GradeViewSection.aspx");
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
            string Takanashi = @"SELECT Student_ID, First_Name, Middle_Name, Last_Name FROM STUDENT_MAIN WHERE Section_ID=@SID";

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



    public static int GradeStatus()
    {
        int GradeStatus = 0;
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @" SELECT Grade_StatusID FROM ENCODING_STATUS WHERE EncodingStat_ID=1";
            Rikka.Open();
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {

                using (SqlDataReader dr = WickedEye.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            GradeStatus = int.Parse(dr["Grade_StatusID"].ToString());
                        }
                    }

                }
            }

        }

        return GradeStatus;
    }


 
    public static int SY()
    {
        int SY = 0;
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @" SELECT SY_ID FROM ENCODING_STATUS WHERE EncodingStat_ID=1";
            Rikka.Open();
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {

                using (SqlDataReader dr = WickedEye.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            SY = int.Parse(dr["SY_ID"].ToString());
                        }
                    }

                }
            }

        }

        return SY;
    }

    public static int Quarter()
    {
        int Quarter = 0;
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @" SELECT Quarter_ID FROM ENCODING_STATUS WHERE EncodingStat_ID=1";
            Rikka.Open();
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {

                using (SqlDataReader dr = WickedEye.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Quarter = int.Parse(dr["Quarter_ID"].ToString());
                        }
                    }

                }
            }

        }

        return Quarter;
    }





    protected void lvStudents_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        dpStudents.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        GetStudents(int.Parse(Request.QueryString["ID"].ToString()));
    }



    protected void lvStudents_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        GetStudents(int.Parse(Request.QueryString["ID"].ToString()));


    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {

    }
    protected void lvStudents_ItemCommand(object sender, ListViewCommandEventArgs e)

    {

        int gradeStatus = GradeStatus();
        int sy = SY();
        int quarter = Quarter();
        if (gradeStatus == 1) 
        {
            int yearlvl = Yearlevel(int.Parse(Request.QueryString["ID"].ToString()));

            TextBox txtGrade = (TextBox)e.Item.FindControl("txtGrade");

            DropDownList ddlSubject = (DropDownList)e.Item.FindControl("ddlSubject");

            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                Util audlog = new Util();
                Cryptic DE = new Cryptic();
                con.Open();
                string SQL = @"INSERT INTO GRADE_INFO(Student_ID, Teacher_ID, Grade_Value, SY, Quarter) 
                            VALUES (@SID, @TID, @Grade_Value, @SY, @Quarter)";

                string Takanashi = @"SELECT Subject_ID, Subject_Name FROM SUBJECT_MAIN WHERE Teacher_ID=@TID AND Year_level = @YL";

                using (SqlCommand WickedEye = new SqlCommand(Takanashi, con))
                {
                    WickedEye.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());
                    WickedEye.Parameters.AddWithValue("@YL", yearlvl);



                    using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                    {
                        ddlSubject.DataSource = Chuu2;
                        ddlSubject.DataTextField = "Subject_Name";
                        ddlSubject.DataValueField = "Subject_ID";
                        ddlSubject.DataBind();

                        ddlSubject.Items.Insert(0, new ListItem("Select a subject.", ""));

                    }
                }


                using (SqlCommand cmd = new SqlCommand(SQL, con))
                {
                    cmd.Parameters.AddWithValue("@SID", Request.QueryString["ID"].ToString());

                    cmd.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());


                    cmd.Parameters.AddWithValue("@SY", sy);

                    cmd.Parameters.AddWithValue("@Quarter", quarter);
                    cmd.Parameters.AddWithValue("@Grade_Value", txtGrade.Text);


                    cmd.ExecuteNonQuery();

                    Response.Redirect("StudentList.aspx");

                }

            }

        }

    }
}

