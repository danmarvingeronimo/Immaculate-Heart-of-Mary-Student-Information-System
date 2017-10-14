using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//DAN MARVIN GERONIMO

public partial class Admin_Admission_StudentList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetStudents();
        }
    }

    void GetStudents()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Student_ID, First_Name, Middle_Name, Last_Name FROM STUDENT_MAIN WHERE STATUS_ID = '3'";

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                using (SqlDataAdapter Nibutani = new SqlDataAdapter(Chuu2Koi))
                {
                    DataSet Kumin = new DataSet();
                    Nibutani.Fill(Kumin, "STUDENT_MAIN");

                    lvStudents.DataSource = Kumin;
                    lvStudents.DataBind();


                }
            }
        }
    }

    protected void lvStudents_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Literal ltStudentID = (Literal)e.Item.FindControl("ltStudentID");

        if (e.CommandName == "updatestat")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string DELETE = @"UPDATE STUDENT_MAIN SET Status_ID='1' WHERE Student_ID=@SID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@SID", ltStudentID.Text);
                    Nero.ExecuteNonQuery();
                }
            }
        }
        else if (e.CommandName == "updateTeach")
        {

        }
        GetStudents();
    }
    protected void lvStudents_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        dpStudents.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        GetStudents();
    }
    protected void lvStudents_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        GetStudents();

    }
}