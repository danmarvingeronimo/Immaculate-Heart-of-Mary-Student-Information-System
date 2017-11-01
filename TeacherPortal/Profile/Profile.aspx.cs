using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TeacherPortal_Profile_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData();
        }

    }
    void GetData()
    {
        using (SqlConnection burger = new SqlConnection(Util.GetConnection()))
        {
            burger.Open();
            string ham = @"SELECT User_ID, Teacher_PW, Teacher_FirstName,Teacher_MiddleName,Teacher_LastName, Department FROM TEACHER_MAIN WHERE Teacher_ID=@UID";

            using (SqlCommand cheese = new SqlCommand(ham, burger))
            {
                cheese.Parameters.AddWithValue("@UID", Session["Teacher_ID"].ToString());

                using (SqlDataReader dr = cheese.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        Teacher_FirstName.Text = dr["Teacher_FirstName"].ToString();
                        Teacher_MiddleName.Text = dr["Teacher_MiddleName"].ToString();
                        Teacher_LastName.Text = dr["Teacher_LastName"].ToString();
                        Department.Text = dr["Department"].ToString();
                    }
                }
            }
        }
    }
}