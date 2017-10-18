using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TeacherPortal_Class : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewFile();
        }
    }
    void ViewFile()
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String Send = @"Select ID, Title, Description, FileContent, Date, UploadedBy from TEACHER_PORTAL";

            using (SqlCommand help = new SqlCommand(Send, con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(help))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "File");

                    lvFile.DataSource = ds;
                    lvFile.DataBind();
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

    protected void lvFile_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Literal ltID = (Literal)e.Item.FindControl("ltID");

        if (e.CommandName == "delfile")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string DELETE = @"DELETE FROM TEACHER_PORTAL WHERE ID=@ID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@ID", ltID.Text);
                    Nero.ExecuteNonQuery();
                }
            }
        }
        else if (e.CommandName == "updatefile")
        {

        }
        ViewFile();
    }
    protected void lvFile_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }
    protected void lvFile_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("FileUpload.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}