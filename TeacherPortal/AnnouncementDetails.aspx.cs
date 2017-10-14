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
        if (Request.QueryString["Announcement_ID"] == null)
        {
            Response.Redirect("ViewAnnouncement.aspx");
        }
        else
        {
            int fileid = 0;
            bool validfileid = int.TryParse(Request.QueryString["Announcement_ID"].ToString(), out fileid);

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

    void GetData(int Announcement_ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Announcement_ID, Title, Description FROM ANNOUNCEMENT WHERE Announcement_ID=@Announcement_ID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("Announcement_ID", Announcement_ID);

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
                com.Parameters.AddWithValue("@Title", txtTitle.Text);
                com.Parameters.AddWithValue("@Description", txtDescription.Text);
                com.Parameters.AddWithValue("@Announcement_ID", Request.QueryString["Announcement_ID"].ToString());
                com.ExecuteNonQuery();

                Response.Redirect("ViewAnnouncement.aspx");
            }
        }

    }
}