using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Section_AddSection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"INSERT INTO TEACHER_MAIN(Teacher_PW, Teacher_FirstName, Teacher_LastName, Teacher_MiddleName, User_ID)
                            VALUES(@Teacher_PW, @Teacher_FirstName, @Teacher_LastName, @Teacher_MiddleName, @User_ID) ";



            using(SqlCommand WickedEye = new SqlCommand(Takanashi,Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Teacher_FirstName", txtFN.Text);
                WickedEye.Parameters.AddWithValue("@Teacher_LastName", txtLN.Text);
                WickedEye.Parameters.AddWithValue("@Teacher_MiddleName", txtMN.Text);
                WickedEye.Parameters.AddWithValue("@User_ID", txtUID.Text);
                WickedEye.Parameters.AddWithValue("@Teacher_PW", txtPass.Text);

                WickedEye.ExecuteNonQuery();
                Response.Redirect("FacultyList.aspx");
            }
        }

    }
}