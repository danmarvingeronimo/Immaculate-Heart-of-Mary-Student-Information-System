﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Faculty_Section_SectionDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["ID"]==null)
        {
            Response.Redirect("FacultyList.aspx");
        }
        else
        {
            int secid = 0;
            bool validsecid = int.TryParse(Request.QueryString["ID"].ToString(), out secid);

            if(validsecid)
            {
                if(!IsPostBack)
                {
                    GetData(secid);
                }
            }
            else
            {
                Response.Redirect("FacultyList.aspx");
            }
        }
    }

    void GetData(int ID)
    {
        using(SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Teacher_ID, Teacher_LastName + ', ' + Teacher_FirstName + ' ' + Teacher_MiddleName AS 'Teacher Name', User_ID, Teacher_PW 
                           FROM TEACHER_MAIN WHERE Teacher_ID=@SID ";
            con.Open();
            using(SqlCommand com = new SqlCommand(SQL,con))
            {
                com.Parameters.AddWithValue("@SID", ID);

                using(SqlDataReader dr = com.ExecuteReader())
                {
                    if(dr.HasRows)
                    {
                        while(dr.Read())
                        {
                            ltID.Text = dr["Teacher Name"].ToString();
                            txtUID.Text = dr["User_ID"].ToString();
                            txtPass.Text = dr["Teacher_PW"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("FacultyList.aspx");
                    }
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using(SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string sql = @"UPDATE TEACHER_MAIN SET User_ID=@UID, Teacher_PW=@PW WHERE Teacher_ID = @SID";
            con.Open();

            using(SqlCommand com = new SqlCommand(sql,con))
            {
                com.Parameters.AddWithValue("@UID", txtUID.Text);
                com.Parameters.AddWithValue("@PW", txtPass.Text);
                com.Parameters.AddWithValue("@SID", Request.QueryString["ID"].ToString());
                com.ExecuteNonQuery();

                Response.Redirect("FacultyList.aspx");
            }
        }

    }
}