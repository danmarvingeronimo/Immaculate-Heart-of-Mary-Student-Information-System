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
            String SQL = @"SELECT teach.Teacher_ID, teach.Teacher_FirstName , teach.Teacher_LastName , teach.Teacher_MiddleName, SEC.Section_ID, SEC.Year_level + ' - ' + Section_Name AS 'Section', H.Description, teach.Image FROM TEACHER_MAIN teach
                          INNER JOIN SECTION SEC ON teach.Section_ID = SEC.Section_ID
						  INNER JOIN HOMEROOM_STAT H ON H.HomeroomStat_ID = teach.HomeroomStat_ID WHERE Teacher_ID !=7 ";
                          

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
        Literal ltSectionID = (Literal)e.Item.FindControl("ltSectionID");


        Cryptic DE = new Cryptic();
        Util audlog = new Util();

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
                    audlog.AuditLogAdmin(DE.Encrypt("Deleting a Faculty"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("Deleted by "
                      + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));
                }
            }
        }
        else if (e.CommandName == "delAdv")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string UPDATE = @"UPDATE SECTION SET HomeStat=@HomeID WHERE Section_ID=@Sec_ID
                                  
                                UPDATE TEACHER_MAIN SET Section_ID=@Section_ID, HomeroomStat_ID=@HID WHERE
                                Teacher_ID=@TID";

                using (SqlCommand Nero = new SqlCommand(UPDATE, con))
                {
                    Nero.Parameters.AddWithValue("@TID", ltTeacherID.Text);
                    Nero.Parameters.AddWithValue("@HomeID", 2);

                    Nero.Parameters.AddWithValue("@Sec_ID", ltSectionID.Text);
                    Nero.Parameters.AddWithValue("@Section_ID", 21);
                    Nero.Parameters.AddWithValue("@HID", 2);

                    Nero.ExecuteNonQuery();
                    audlog.AuditLogAdmin(DE.Encrypt("Removed adviser status"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("Removed by "
                      + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));
                }
            }
        }
        GetFaculty();
    }
 
}