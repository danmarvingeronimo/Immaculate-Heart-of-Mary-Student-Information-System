﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//DAN MARVIN GERONIMO

public partial class Admin_IT_Admin_AdminDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("Schedule.aspx");
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
                    GetSubj();
                    GetTime();

                }
            }
            else
            {
                Response.Redirect("Schedule.aspx");
            }
        }

    }




    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Sec.Year_level + ' - ' + Sec.Section_Name + ' /' + S.Day_Schedule + ' - ' AS 'Section' FROM SECTION Sec 
                           JOIN SCHEDULE S ON Sec.Section_ID=S.Section_ID WHERE S.ScheduleID=@SID ";
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
                        Response.Redirect("Schedule.aspx");
                    }
                }
            }
        }
    }


    public static int Yearlevel(int ID)
    {
        int Yearlevel = 0;
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @" SELECT Year_level FROM SCHEDULE WHERE ScheduleID=@SID";
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


    //To get subjects
    void GetSubj()
    {
        int yearlvl = Yearlevel(int.Parse(Request.QueryString["ID"].ToString()));
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Subject_ID, Subject_Name FROM SUBJECT_MAIN WHERE Year_Level=@YL";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
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
        }
    }

    void GetTime()
    {
        int time = Yearlevel(int.Parse(Request.QueryString["ID"].ToString()));
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Timeslot_ID, Timeslot FROM TIMESLOT_MAIN ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@YL", time);
                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    ddlTime.DataSource = Chuu2;
                    ddlTime.DataTextField = "Timeslot";
                    ddlTime.DataValueField = "Timeslot_ID";
                    ddlTime.DataBind();

                    ddlTime.Items.Insert(0, new ListItem("Select time.", ""));

                }
            }
        }
    }



    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            Rikka.Open();
            string Takanashi = @"UPDATE SCHEDULE SET Subject_ID=@Subject_ID WHERE
                                ScheduleID=@ScheduleID";

            string time = @"UPDATE SCHEDULE SET Timeslot_ID=@Timeslot_ID WHERE
                                 ScheduleID=@ScheduleID";

            string validate = @"SELECT COUNT (Section_ID) FROM SCHEDULE WHERE Timeslot_ID = '" + ddlTime.Text + "' ";
            SqlCommand con = new SqlCommand(validate, Rikka);
            int count = Convert.ToInt32(con.ExecuteScalar().ToString());

            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {   //Nathaniel Collins S. Ortiz
                WickedEye.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());

                //Subject
                WickedEye.Parameters.AddWithValue("@Subject_ID", ddlSubject.Text);
                WickedEye.Parameters.AddWithValue("@ScheduleID", Request.QueryString["ID"].ToString());
                WickedEye.ExecuteNonQuery();

            }
            using (SqlCommand cmd = new SqlCommand(time, Rikka))
            {   
                //Time
                cmd.Parameters.AddWithValue("@Timeslot_ID", ddlTime.Text);
                cmd.Parameters.AddWithValue("@ScheduleID", Request.QueryString["ID"].ToString());

                if (count == 1)
                {
                    error.Visible = true;

                }
                else
                {

                    cmd.ExecuteNonQuery();
                    //Nathaniel Collins S. Ortiz V
                    audlog.AuditLogAdmin(DE.Encrypt("Edit Schedule"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("Schedule has been Edited by "
                             + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));

                    Session["addsub"] = error.Text;
                    Response.Redirect("Schedule.aspx");

                }
            }
        }
    }
}