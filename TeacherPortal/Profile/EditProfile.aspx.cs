using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TeacherPortal_Profile_EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetData();
    }
    void GetData()
    {
        using (SqlConnection burger = new SqlConnection(Util.GetConnection()))
        {
            burger.Open();
            string ham = @"SELECT Teacher_PW, Teacher_FirstName,Teacher_MiddleName,Teacher_LastName, Department FROM TEACHER_MAIN WHERE Teacher_ID=@UID";

            using (SqlCommand cheese = new SqlCommand(ham, burger))
            {
                cheese.Parameters.AddWithValue("@UID", Session["teacher_id"].ToString());

                using (SqlDataReader dr = cheese.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        txtFN.Text = dr["Teacher_FirstName"].ToString();
                        txtMN.Text = dr["Teacher_MiddleName"].ToString();
                        txtLN.Text = dr["Teacher_LastName"].ToString();
                        txtDept.Text = dr["Department"].ToString();
                        txtPassword.Text = dr["Teacher_PW"].ToString();
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
            string wai = @"UPDATE TEACHER_MAIN SET Teacher_PW=@TPW, Teacher_FirstName=@TFN, Teacher_MiddleName=@TMN, Teacher_LastName=@TLN, Department=@Department WHERE User_ID = @User_ID";
            //}
            using (SqlCommand best = new SqlCommand(wai, fu))
            {
                

                best.Parameters.AddWithValue("@TPW", txtPassword.Text);
                best.Parameters.AddWithValue("@TFN", txtFN.Text);
                best.Parameters.AddWithValue("@TMN", txtMN.Text);
                best.Parameters.AddWithValue("@TLN", txtLN.Text);
                best.Parameters.AddWithValue("@Department", txtDept.Text);
                com.Parameters.AddWithValue("@User_ID", Request.QueryString["User_ID"].ToString());
                best.ExecuteNonQuery();
                Response.Redirect("Profile.aspx");
 
            }

        }
    }
}
