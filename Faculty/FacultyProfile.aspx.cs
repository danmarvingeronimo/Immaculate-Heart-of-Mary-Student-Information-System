using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Faculty_FacultyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            GetData();
        }

    }
    void GetData()
    {
        using (SqlConnection burger = new SqlConnection(Util.GetConnection()))
        {
            burger.Open();
            string ham = @"SELECT Teacher_ID, Teacher_PW, Teacher_FirstName,Teacher_MiddleName,Teacher_LastName FROM TEACHER_MAIN WHERE User_ID=@UID";

            using (SqlCommand cheese = new SqlCommand(ham, burger))
            {

                cheese.Parameters.AddWithValue("User_ID", Session["teacherid"].ToString());



                using (SqlDataReader dr = cheese.ExecuteReader())
                {
                    while(dr.Read())
                    {
                        txtTeacherID.Text =dr["Teacher_ID"].ToString();
                        txtPassword.Text = dr["Teacher_PW"].ToString();
                        txtFN.Text = dr["Teacher_FirstName"].ToString();
                        txtMN.Text = dr["Teacher_MiddleName"].ToString();
                        txtLN.Text = dr["Teacher_LastName"].ToString();

                    }
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection fu = new SqlConnection(Util.GetConnection()))
        {
            fu.Open();
            //string wai = "";
            //if (txtPassword.Text == "")
            //{
            //    wai = "@UPDATE TEACHER_MAIN SET Teacher_ID=@TID Teacher_FirstName=@TFN, Teacher_MiddleName=@TMN, Teacher_LastName=@TLN WHERE User_ID = @UID";
            //}
            //else
            //{
               string wai = @"UPDATE TEACHER_MAIN SET Teacher_ID=@TID, Teacher_PW=@TPW, Teacher_FirstName=@TFN, Teacher_MiddleName=@TMN, Teacher_LastName=@TLN WHERE User_ID = @UID";
            //}
            using(SqlCommand best = new SqlCommand(wai,fu))
            {
                best.Parameters.AddWithValue("@UID", Session["userid"].ToString());
                best.Parameters.AddWithValue("@TID", txtTeacherID.Text);
                best.Parameters.AddWithValue("@TPW",txtPassword.Text);
                best.Parameters.AddWithValue("@TFN",txtFN.Text);
                best.Parameters.AddWithValue("@TMN", txtMN.Text);
                best.Parameters.AddWithValue("@TLN", txtLN.Text);
                best.ExecuteNonQuery();
                Response.Redirect(Request.Url.AbsoluteUri
                    );
                success.Visible = true;
            }

        }

    }
}