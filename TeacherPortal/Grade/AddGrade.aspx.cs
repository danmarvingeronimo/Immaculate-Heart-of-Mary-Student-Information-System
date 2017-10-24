using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class TeacherPortal_Upload : System.Web.UI.Page
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
                    GetSubj();
                    

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
                        Response.Redirect("StudentList.aspx");
                    }
                }
            }
        }
    }





    void GetSubj()
    {
        
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Subject_ID, Subject_Name FROM SUBJECT_MAIN WHERE Teacher_ID=@TID";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());

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



    protected void btnUpload_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"INSERT INTO GRADE_INFO(Student_ID, Teacher_ID, Grade_Value, SY, Quarter, Subject_ID) 
                            VALUES (@SID, @TID, @Grade_Value, @SY, @Quarter, @Subject_ID)";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@SID", Request.QueryString["ID"].ToString());

                cmd.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());

                cmd.Parameters.AddWithValue("@Grade_Value", txtGrade.Text);


                cmd.Parameters.AddWithValue("@SY", txtSchoolYear.Text);

                cmd.Parameters.AddWithValue("@Quarter", txtQuarter.Text);
                cmd.Parameters.AddWithValue("@Subject_ID", ddlSubject.Text);


                cmd.ExecuteNonQuery();
                Response.Redirect("StudentList.aspx");

            }
        }

    }
}
