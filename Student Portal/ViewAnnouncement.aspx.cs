using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TeacherPortal_ViewAnnouncement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewAnnouncements(Student).aspx");
        }
        else
        {
            int fileid = 0;
            bool validfileid = int.TryParse(Request.QueryString["ID"].ToString(), out fileid);

            if (validfileid)
            {
                if (!IsPostBack)
                {
                    ViewAnnouncement(fileid);
                }
            }
            else
            {
                Response.Redirect("ViewAnnouncements(Student).aspx");
            }
        }


    }

    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Subject_Name FROM SUBJECT_MAIN 
                           WHERE Subject_ID=@SID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@SID", ID);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ltSID.Text = dr["Subject_Name"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewSubject.aspx");
                    }
                }
            }
        }
    }

    void ViewAnnouncement(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String Send = @"Select A.Announcement_ID, A.Title, A.Image, A.Description, A.DateAdded, A.Subject_ID, 
                            T.Teacher_LastName + ', ' + T.Teacher_FirstName + ' ' + T.Teacher_MiddleName AS 'Teacher'
                            FROM ANNOUNCEMENT A INNER JOIN
                            TEACHER_MAIN T ON A.Teacher_ID = T.Teacher_ID
                            WHERE A.Subject_ID = @SID"; 

            using (SqlCommand help = new SqlCommand(Send, con))
            {
                help.Parameters.AddWithValue("@SID", ID);
                using (SqlDataAdapter da = new SqlDataAdapter(help))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "File");

                    lvAnnouncement.DataSource = ds;
                    lvAnnouncement.DataBind();
                }
            }
        }
    }


    protected void lvAnnouncement_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Util audlog = new Util();
        Cryptic DE = new Cryptic();
        Literal ltAnnouncement_ID = (Literal)e.Item.FindControl("ltAnnouncement_ID");

        if (e.CommandName == "delfile")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string DELETE = @"DELETE FROM ANNOUNCEMENT WHERE Announcement_ID=@Announcement_ID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@Announcement_ID", ltAnnouncement_ID.Text);
                    Nero.ExecuteNonQuery();
                    audlog.AuditLogTeacher(DE.Encrypt("Delete Announcements"), int.Parse(Session["teacher_id"].ToString()), DE.Encrypt("Delete by "
                           + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString()));
                }
            }
        }

    }
    protected void lvAnnouncement_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }
    protected void lvAnnouncement_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}