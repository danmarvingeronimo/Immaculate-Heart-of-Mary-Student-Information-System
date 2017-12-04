using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Principal_Faculty_AssignFacSec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            GetStatus();
        }

    }




   

    void GetStatus()
    {
        
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            Cryptic DE = new Cryptic();

                string Takanashi = @"SELECT Grade_StatusID, Description FROM GRADE_INPUT_STAT ";
                using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
                {

                    using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                    {
                        ddlStatus.DataSource = Chuu2;
                        ddlStatus.DataTextField = "Description";
                        ddlStatus.DataValueField = "Grade_StatusID";
                        ddlStatus.DataBind();

                        ddlStatus.Items.Insert(0, new ListItem("Enable or Disable Grade Encoding.", ""));

                    }
                }

             
                
                
            
            
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            Rikka.Open();
            string Takanashi = @"UPDATE TEACHER_MAIN SET Section_ID=@Section_ID, HomeroomStat_ID=@HID WHERE
                                Teacher_ID=@Teacher_ID";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());

                //Subject
                WickedEye.Parameters.AddWithValue("@Section_ID", ddlStatus.Text);
                WickedEye.Parameters.AddWithValue("@HID", 1);

                WickedEye.Parameters.AddWithValue("@Teacher_ID", Request.QueryString["ID"].ToString());

                WickedEye.Parameters.AddWithValue("@HomeID", 1);
                WickedEye.Parameters.AddWithValue("@Sec_ID", ddlStatus.Text);

                WickedEye.ExecuteNonQuery();

                //Nathaniel Collins S. Ortiz
                audlog.AuditLogAdmin(DE.Encrypt("Assigning Faculty with Homeroom Adviser"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("Faculty assigned by "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));
                Response.Redirect("FacultyList.aspx");

            }
        }
    }

    protected void lvFaculty_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        {

        }
    }


}

