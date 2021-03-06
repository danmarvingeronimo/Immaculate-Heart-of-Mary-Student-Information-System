﻿using System;
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
            Response.Redirect("StudentList.aspx");
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
                Response.Redirect("StudentList.aspx");
            }
        }

    }




    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Student_ID FROM STUDENT_MAIN 
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
                            ltSID.Text = dr["Student_ID"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("StudentList.aspx");
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
            string Takanashi = @"SELECT G.Grade_ID, G.Grade_Value, G.Quarter, S.Subject_Name FROM GRADE_INFO G INNER JOIN
                                SUBJECT_MAIN S ON G.Subject_ID = S.Subject_ID WHERE G.Student_ID = @SID AND G.Teacher_ID=@TID";
                

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                Chuu2Koi.Parameters.AddWithValue("@SID", ID);
                Chuu2Koi.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());
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
    protected void lvStudents_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Util audlog = new Util();
        Cryptic DE = new Cryptic();
        Literal ltGradeID = (Literal)e.Item.FindControl("ltGradeID");

        if (e.CommandName == "delfile")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string DELETE = @"DELETE FROM GRADE_INFO WHERE Grade_ID=@Grade_ID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@Grade_ID", ltGradeID.Text);
                    Nero.ExecuteNonQuery();
                    audlog.AuditLogAdmin(DE.Encrypt("Deleted Grade"), int.Parse(Session["user_id"].ToString()), DE.Encrypt("Deleted by Teacher "
                        + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString()));
                    Response.Redirect("StudentList.aspx");
                }
            }
        }

    }
        protected void btnRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentList.aspx");
    }


}