﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Student_LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            con.Open();
               
            string SQL = @"Select Student_ID,First_Name,Middle_Name,Last_Name, UserType_ID, Parent_UserID, Parent_Password FROM STUDENT_MAIN
                         WHERE Parent_UserID=@Parent_UserID AND Parent_Password=@Parent_Password";

            using(SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@Parent_UserID", txtUID.Text);
                com.Parameters.AddWithValue("@Parent_Password", txtPWD.Text);
                using (SqlDataReader data = com.ExecuteReader())
                {
                    if(data.HasRows)
                    {
                        while(data.Read())
                        {
                            Session["student_id"] = data["Student_ID"].ToString();
                            Session["first_name"] = data["First_Name"].ToString();
                            Session["middle_name"] = data["Middle_Name"].ToString();
                            Session["last_name"] = data["Last_Name"].ToString();
                            Session["usertype_id"] = data["UserType_ID"].ToString();
                        }
                        audlog.AuditLogAdmin(DE.Encrypt("Log-In(Parents)"), int.Parse(Session["student_id"].ToString()), DE.Encrypt("Logged-In by " + Session["first_name"].ToString()
                            + " " + Session["middle_name"].ToString() + Session["last_name"].ToString()));
                        Response.Redirect("CompleteStudentList.aspx");
                    }
                    else
                    {
                        error.Visible = true;
                    }
                }
            }
        }
    }
}