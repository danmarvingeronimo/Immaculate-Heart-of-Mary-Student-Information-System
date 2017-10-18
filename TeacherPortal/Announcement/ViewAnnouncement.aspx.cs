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
        if (!IsPostBack)
        {
            ViewAnnouncement();
        }
    }
    void ViewAnnouncement()
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String Send = @"Select A.Announcement_ID, A.Title, A.Image, A.Description, A.DateAdded, 
                            T.Teacher_LastName + ', ' + T.Teacher_FirstName + ' ' + T.Teacher_MiddleName AS 'Teacher'
                            FROM ANNOUNCEMENT A INNER JOIN
                            TEACHER_MAIN T ON A.Teacher_ID = T.Teacher_ID
                            WHERE T.Teacher_ID = @SID";

            using (SqlCommand help = new SqlCommand(Send, con))
            {
                help.Parameters.AddWithValue("@SID", Session["Teacher_ID"].ToString());
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
    //void GetSection(string keyword)
    //{
    //    using (SqlConnection con = new SqlConnection(Util.GetConnection()))
    //    {
    //        string SQL =
    //    }
    //}

    protected void lvAnnouncement_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
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
                }
            }
        }
        else if (e.CommandName == "updatefile")
        {

        }
        ViewAnnouncement();
    }
    protected void lvAnnouncement_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }
    protected void lvAnnouncement_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddAnnouncement.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}