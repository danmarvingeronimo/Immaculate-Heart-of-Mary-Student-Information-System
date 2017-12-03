using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Faculty_Scheduling_Schedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("SchedViewSection.aspx");
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
                    ViewSchedule(secid);
                }
            }
            else
            {
                Response.Redirect("SchedViewSection.aspx");
            }
        }

    }

    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Year_level + ' - ' + Section_Name AS GradeSect FROM SECTION WHERE Section_ID=@SID ";
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
                            ltSID.Text = dr["GradeSect"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("SchedViewSection.aspx");
                    }
                }
            }
        }
    }

    void ViewSchedule(int ID)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {



            Rikka.Open();
            string Takanashi = @"Select S.ScheduleID, S.Day_Schedule, S.Timeslot , S.Year_level + ' - ' + Sec.Section_Name AS 'Grade Section', Subj.Subject_Name ,
	                            Teach.Teacher_FirstName + ', ' + Teach.Teacher_LastName + ' ' + Teach.Teacher_MiddleName AS 'Teacher'
								from SCHEDULE S
                                INNER JOIN SECTION Sec ON S.Section_ID = Sec.Section_ID
                                INNER JOIN SUBJECT_MAIN Subj ON S.Subject_ID = Subj.Subject_ID
								INNER JOIN TEACHER_MAIN Teach ON Subj.Teacher_ID = Teach.Teacher_ID WHERE Sec.Section_ID = @SID";


            //@"Select ScheduleID, Day_Schedule, Timeslot from SCHEDULE";

            //@"Select S.ScheduleID, S.Day_Schedule, S.Timeslot, S.Year_level, Sec.Section_Name from SCHEDULE S
            //                     INNER JOIN SECTION Sec ON S.Section_ID = Sec.Section_ID"

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                Chuu2Koi.Parameters.AddWithValue("@SID", ID);




                using (SqlDataAdapter Nibutani = new SqlDataAdapter(Chuu2Koi))
                {
                    DataSet Kumin = new DataSet();
                    Nibutani.Fill(Kumin, "Schedule");
                    lvSched.DataSource = Kumin;
                    lvSched.DataBind();
                }
            }
        }
    }

    protected void lvSched_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Literal ltSchedID = (Literal)e.Item.FindControl("ltSchedID");
        Util audlog = new Util();
        Cryptic DE = new Cryptic();
        if (e.CommandName == "delsched")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {   
                con.Open();
                string DELETE = @"DELETE FROM SCHEDULE WHERE ScheduleID=@SchedID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@SchedID", ltSchedID.Text);
                    Nero.ExecuteNonQuery();
                    audlog.AuditLogAdmin("Delete Schedule", int.Parse(Session["admin_id"].ToString()), "Schedule has been Deleted by "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString());
                }
            }
        }
        else if (e.CommandName == "updatesec")
        {

        }
    }
}