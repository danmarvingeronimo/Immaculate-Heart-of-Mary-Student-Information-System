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
        if (!IsPostBack)
        {
            GetFaculty();
        }
    }

     void GetFaculty()
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                String SQL = @"Select Teach.Teacher_ID, Teach.Teacher_FirstName + ', ' + Teach.Teacher_LastName + ' ' + Teach.Teacher_MiddleName AS 'Teacher Name', Teach.User_ID, Subj.Subject_Name from TEACHER_MAIN Teach
                               INNER JOIN SUBJECT_MAIN Subj ON Subj.Teacher_ID=Teach.Teacher_ID";

                using (SqlCommand cmd = new SqlCommand(SQL,con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataSet ds = new DataSet();
                        da.Fill(ds, "Faculty");

                        lvFaculty.DataSource = ds;
                        lvFaculty.DataBind();
                    }
                }
            }
        }
     protected void lvFaculty_ItemCommand(object sender, ListViewCommandEventArgs e)
     {
        Literal ltTeacherID = (Literal)e.Item.FindControl("ltTeacherID");

        if (e.CommandName == "delTeach")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string DELETE = @"DELETE FROM TEACHER_MAIN WHERE Teacher_ID=@TID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@TID", ltTeacherID.Text);
                    Nero.ExecuteNonQuery();
                }
            }
        }
        else if (e.CommandName == "updateTeach")
        {

        }
        GetFaculty();
    }
    protected void lvFaculty_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
     {
         dpFaculty.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
         GetFaculty();
     }
     protected void lvFaculty_ItemDataBound(object sender, ListViewItemEventArgs e)
     {
        GetFaculty();

    }


}