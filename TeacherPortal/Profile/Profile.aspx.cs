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
            GetProfile();
        }

    }
    void GetProfile()
    {
        using (SqlConnection cake = new SqlConnection(Util.GetConnection()))
        {
            cake.Open();
            string cheese = @"SELECT User_ID, Teacher_FirstName,Teacher_MiddleName,Teacher_LastName, Department FROM TEACHER_MAIN WHERE Teacher_ID=@UID";
            using (SqlCommand com = new SqlCommand(cheese, cake))
            {
                com.Parameters.AddWithValue("@UID", Session["teacher_id"].ToString());
                using (SqlDataReader dr = com.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        Teacher_FirstName.text = dr["Teacher_FirstName"].ToString();
                        Middle_Name.text = dr["Middle_Name"].ToString();
                        Last_Name.text = dr["Last_Name"].ToString();
                        Gender.text = dr["Gender"].ToString();
                      

                    }
                }
            }

        }
    }
}