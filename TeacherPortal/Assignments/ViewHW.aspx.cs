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
            ViewHW();
        }
    }
    void ViewHW()
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String Send = @"Select U.UploadHW_ID, U.Title, U.FileContent, U.Description, U.DateAdded, 
                            T.Teacher_LastName + ', ' + T.Teacher_FirstName + ' ' + T.Teacher_MiddleName AS 'Teacher'
                            FROM UPLOAD_HW U INNER JOIN
                            TEACHER_MAIN T ON U.Teacher_ID = T.Teacher_ID
                            WHERE T.Teacher_ID = @SID";

            using (SqlCommand help = new SqlCommand(Send, con))
            {

                help.Parameters.AddWithValue("@SID", Session["Teacher_ID"].ToString());
                using (SqlDataAdapter da = new SqlDataAdapter(help))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "File");

                    lvHW.DataSource = ds;
                    lvHW.DataBind();
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

    protected void lvHW_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Literal ltUploadHW_ID = (Literal)e.Item.FindControl("ltUploadHW_ID");

        if (e.CommandName == "delfile")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string DELETE = @"DELETE FROM UPLOAD_HW WHERE UploadHW_ID=@UploadHW_ID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@UploadHW_ID", ltUploadHW_ID.Text);
                    Nero.ExecuteNonQuery();
                }
            }
        }
        else if (e.CommandName == "updatefile")
        {

        }
        ViewHW();
    }
    protected void lvHW_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }
    protected void lvHW_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddLectures.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}