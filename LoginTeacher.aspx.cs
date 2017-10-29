using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TeacherLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            Util audlog = new Util();
            con.Open();
            string SQL = @"Select Teacher_ID,Teacher_FirstName,Teacher_MiddleName,Teacher_LastName FROM TEACHER_MAIN
                  WHERE User_ID=@User_ID AND Teacher_PW=@Teacher_PW";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@User_ID", txtUID.Text);
                cmd.Parameters.AddWithValue("@Teacher_PW", txtPWD.Text);
                using (SqlDataReader data = cmd.ExecuteReader())
                {
                    if (data.HasRows)
                    {
                        while (data.Read())
                        {
                            Session["teacher_id"] = data["Teacher_ID"].ToString();
                            Session["teacher_firstname"] = data["Teacher_FirstName"].ToString();
                            Session["teacher_middlename"] = data["Teacher_MiddleName"].ToString();
                            Session["teacher_lastname"] = data["Teacher_LastName"].ToString();

                        }
                        audlog.AuditLogTeacher("Log-In", int.Parse(Session["teacher_id"].ToString()), "Logged-In by "
                            + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString());
                        Response.Redirect("TeacherPortal/Homepage.aspx");
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