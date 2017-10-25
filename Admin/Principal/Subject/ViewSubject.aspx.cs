using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//DAN MARVIN GERONIMO

public partial class Subject_ViewSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewSubject();
        }
    }

    void ViewSubject()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"Select Subj.Subject_ID, Subj.Subject_Name, Subj.Subject_Desc, Teach.Teacher_FirstName + ', ' + Teach.Teacher_LastName + ' ' + Teach.Teacher_MiddleName AS 'Teacher Name' 
                                 from  SUBJECT_MAIN Subj
                                 INNER JOIN TEACHER_MAIN Teach ON Subj.Teacher_ID=Teach.Teacher_ID WHERE Subj.Subject_ID!='81'";

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                using (SqlDataAdapter Nibutani = new SqlDataAdapter(Chuu2Koi))
                {
                    DataSet Kumin = new DataSet();
                    Nibutani.Fill(Kumin, "Subject");
                    lvSubject.DataSource = Kumin;
                    lvSubject.DataBind();
                }
            }
        }
    }

    protected void lvSubject_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }


    //protected void lvSubject_ItemCommand(object sender, ListViewCommandEventArgs e)
    //{
    //    Literal ltSubjectID = (Literal)e.Item.FindControl("ltSubjectID");

    //    if (e.CommandName == "delsub")
    //    {
    //        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
    //        {
    //            con.Open();
    //            string DELETE = @"DELETE FROM SUBJECT_MAIN WHERE Subject_ID=@SubjID";
    //            using (SqlCommand Nero = new SqlCommand(DELETE, con))
    //            {
    //                Nero.Parameters.AddWithValue("@SubjID", ltSubjectID.Text);
    //                Nero.ExecuteNonQuery();
    //            }
    //        }
    //    }
    //    else if (e.CommandName == "updatesec")
    //    {

    //    }
    //    ViewSubject();
    //}


    //protected void lvSubject_ItemCommand(object sender, ListViewCommandEventArgs e)
    //{
    //    Literal ltSubjectID = (Literal)e.Item.FindControl("ltSubjectID");

    //    if (e.CommandName == "delsub")
    //    {
    //        using (SqlConnection larson = new SqlConnection(Util.GetConnection()))
    //        {
    //            larson.Open();
    //            string steve = @"DELETE FROM SUBJECT_MAIN WHERE Subject_ID=@SubID";
    //            using (SqlCommand raw = new SqlCommand(steve, larson))
    //            {
    //                raw.Parameters.AddWithValue("@SubID", ltSubjectID.Text);
    //                raw.ExecuteNonQuery();
    //            }
    //        }

    //    }
    //    else if (e.CommandName == "updatesub")
    //    {
    //        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
    //        {
    //            con.Open();
    //            string sql = @"UPDATE SUBJECT_MAIN SET Subject_Name=@SN,Subject_Desc=@SD,Identity_Code=@IC, UserID=@UID WHERE Subject_ID=SID";
    //            using (SqlCommand com = new SqlCommand(sql, con))
    //            {

    //            }
    //        }

    //    }
    //    ViewSubject();


    //}
}
