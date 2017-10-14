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
            String Send = @"Select Announcement_ID, Title, Image, Description, DateAdded, DateModified, UploadedBy from ANNOUNCEMENT";

            using (SqlCommand help = new SqlCommand(Send, con))
            {
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