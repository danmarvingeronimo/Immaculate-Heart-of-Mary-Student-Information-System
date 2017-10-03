using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//Nathaniel Collins S. Ortiz

public partial class Faculty_AddFaculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();

            string SQL = @"INSERT INTO TEACHER_MAIN VALUES(@Teacher_ID,@Teacher_PW,@Teacher_FirstName,@Teacher_MiddleName,
             @Teacher_LastName,,@User_ID)";

            using(SqlCommand com = new SqlCommand(SQL,con))
            {
                com.Parameters.AddWithValue("@Teacher_PW", txtPassword.Text);
                com.Parameters.AddWithValue("@Teacher_FirstName", txtFName.Text);
                com.Parameters.AddWithValue("@Teacher_MiddleName", txtMName.Text);
                com.Parameters.AddWithValue("@Teacher_LastName", txtLname.Text);
                com.Parameters.AddWithValue("@User_ID", txtTeacherID.Text);
                com.ExecuteNonQuery();
                Response.Redirect("Faculty.aspx");
            }
        }
    }
}