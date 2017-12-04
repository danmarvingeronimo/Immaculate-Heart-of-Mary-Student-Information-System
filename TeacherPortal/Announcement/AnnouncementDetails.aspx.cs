using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TeacherPortal_AnnouncementDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewAnnouncement.aspx");
        }
        else
        {
            int fileid = 0;
            bool validfileid = int.TryParse(Request.QueryString["ID"].ToString(), out fileid);

            if (validfileid)
            {
                if (!IsPostBack)
                {
                    GetData(fileid);
                }
            }
            else
            {
                Response.Redirect("ViewAnnouncement.aspx");
            }
        }
    }

    void GetData(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Announcement_ID, Title, Description FROM ANNOUNCEMENT WHERE Announcement_ID=@ID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@ID", ID);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ltAnnouncement_ID.Text = dr["Announcement_ID"].ToString();
                            txtTitle.Text = dr["Title"].ToString();
                            txtDescription.Text = dr["Description"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewAnnouncement.aspx");
                    }
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string sql = @"UPDATE ANNOUNCEMENT SET Title=@Title, Description=@Description WHERE Announcement_ID=@Announcement_ID";
            con.Open();

            using (SqlCommand com = new SqlCommand(sql, con))
            {
                Cryptic DE = new Cryptic();
                Util audlog = new Util();
                //audit
                com.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());
                //
                com.Parameters.AddWithValue("@Title", txtTitle.Text);
                com.Parameters.AddWithValue("@Description", txtDescription.Text);
                com.Parameters.AddWithValue("@Announcement_ID", Request.QueryString["ID"].ToString());
                com.ExecuteNonQuery();
                audlog.AuditLogAdmin(DE.Encrypt("Announcements Details"), int.Parse(Session["user_id"].ToString()), DE.Encrypt("Edited by Teacher "
                           + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString()));
                //audlog.AuditLogTeacher("Announcement Details", int.Parse(Session["teacher_id"].ToString()), "Edited by "
                //          + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString());

                Response.Redirect("ViewAnnouncement.aspx");
            }
        }

    }
}