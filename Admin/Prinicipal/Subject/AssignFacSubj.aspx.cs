using System;
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
            string Takanashi = @"SELECT Teacher_ID, Teacher_FirstName + ', ' + Teacher_LastName + ' ' + Teacher_MiddleName AS 'Teacher Name' FROM TEACHER_MAIN";
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
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Rikka.Open();
            string Takanashi = @"UPDATE SUBJECT_MAIN SET Teacher_ID=@Teacher_ID WHERE
                                Subject_ID=@Subject_ID";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());
                //Subject
                WickedEye.Parameters.AddWithValue("@Teacher_ID", ddlTeacher.Text);
                WickedEye.Parameters.AddWithValue("@Subject_ID", Request.QueryString["ID"].ToString());


                WickedEye.ExecuteNonQuery();
                //Nathaniel Collins S. Ortiz
                audlog.AuditLogAdmin("Assigning Faculty with Subject", int.Parse(Session["admin_id"].ToString()), "Faculty assigned by "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString());
                Response.Redirect("ViewSubject.aspx");

            }
        }
    }
}