﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//Nathaniel Collins S. Ortiz
//Dan Marvin Geronimo

public partial class Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewSubject.aspx");
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
                    GetTeachers();

                }
            }
            else
            {
                Response.Redirect("ViewSubject.aspx");
            }
        }

    }

    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Subject_Name FROM SUBJECT_MAIN  
                            WHERE Subject_ID=@SID ";
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
                            ltSID.Text = dr["Subject_Name"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewSubject.aspx");
                    }
                }
            }
        }
    }

    void GetTeachers()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Teacher_ID, Teacher_FirstName + ', ' + Teacher_LastName + ' ' + Teacher_MiddleName AS 'Teacher Name' FROM TEACHER_MAIN
                                WHERE Teacher_ID!= 7";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    ddlTeacher.DataSource = Chuu2;
                    ddlTeacher.DataTextField = "Teacher Name";
                    ddlTeacher.DataValueField = "Teacher_ID";
                    ddlTeacher.DataBind();

                    ddlTeacher.Items.Insert(0, new ListItem("Select a Teacher.", ""));
                   

                }
            }
        }
    }
    //WickedEye.CommandText = "SELECT COUNT(*) from SUBJECT_MAIN ";
      //          Int32 count = (Int32)WickedEye.ExecuteScalar();

    //void Count()
    //{
    //    using (SqlConnection con = new SqlConnection(Util.GetConnection()))
    //    {
    //        con.Open();
    //        string pleasefortheloveofgodwok = "SELECT COUNT(*) from SUBJECT_MAIN where Teacher_ID=@TID";
    //        using (SqlCommand com = new SqlCommand(pleasefortheloveofgodwok, con))
    //        {
    //            com.Parameters.AddWithValue("@TID", ddlTeacher.Text);
    //            com.ExecuteNonQuery();

    //        }

    //    }

    //}

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            Rikka.Open();
            string Takanashi = @"UPDATE SUBJECT_MAIN SET Teacher_ID=@Teacher_ID WHERE
                                Subject_ID=@Subject_ID";
            string gg = "SELECT COUNT(Teacher_ID) from SUBJECT_MAIN where Teacher_ID= '" +ddlTeacher.Text + "'";
            SqlCommand com = new SqlCommand(gg, Rikka);
            int count = Convert.ToInt32(com.ExecuteScalar().ToString());

            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());
                //Subject
                WickedEye.Parameters.AddWithValue("@Teacher_ID", ddlTeacher.Text);
                WickedEye.Parameters.AddWithValue("@Subject_ID", Request.QueryString["ID"].ToString());
              
               
                if (count == 2)
                {
                    error.Visible = true;
                }
               else
                {
                    WickedEye.ExecuteNonQuery();
                    Rikka.Close();
                    audlog.AuditLogAdmin(DE.Encrypt("Assigning Faculty with Subject"), int.Parse(Session["user_id"].ToString()), DE.Encrypt("Faculty assigned by Principal "
                    + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));

                    Session["add"] = add.Text;
                    Response.Redirect("ViewSubject.aspx");
                }
                //SqlDataReader dr = WickedEye.ExecuteReader();
                //int count=2;
                //if (dr.HasRows)
                //{
                //    while (dr.Read())
                //    {   
                //    }
                //}
                //else
                //{
                //    error.Visible = true;
                //}



                //Nathaniel Collins S. Ortiz



            }
        }
    }
}