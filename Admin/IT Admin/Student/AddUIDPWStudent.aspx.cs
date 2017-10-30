using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TeacherPortal_Class : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("IDStudentList.aspx");
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
                    

                }
            }
            else
            {
                Response.Redirect("IDStudentList.aspx");
            }
        }

    }

    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Student_ID, Last_Name + ', ' + First_Name + ' ' + Middle_Name AS 'Student' FROM STUDENT_MAIN  
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
                        Response.Redirect("ViewSubject.aspx");
                    }
                }
            }
        }

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string sql = @"UPDATE STUDENT_MAIN SET User_ID=@UID, Student_PW=@PW WHERE Student_ID=@SID";
            con.Open();

            using (SqlCommand com = new SqlCommand(sql, con))
            {
                com.Parameters.AddWithValue("@UID", txtUID.Text);
                com.Parameters.AddWithValue("@PW", txtPWD.Text);


                com.Parameters.AddWithValue("@SID", Request.QueryString["ID"].ToString());
                com.ExecuteNonQuery();

                Response.Redirect("IDStudentList.aspx");
            }
        }

    }
}