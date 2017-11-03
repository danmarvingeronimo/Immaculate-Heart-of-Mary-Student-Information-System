using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student_Portal_ViewLecture_Student_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewLectures(Student).aspx");
        }
        else
        {
            int fileid = 0;
            bool validfileid = int.TryParse(Request.QueryString["ID"].ToString(), out fileid);

            if (validfileid)
            {
                if (!IsPostBack)
                {
                    ViewLectures(fileid);
                }
            }
            else
            {
                Response.Redirect("ViewLectures(Student).aspx");
            }
        }
    }
    void ViewLectures(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String View = @"Select U.UploadLecture_ID, U.Title, U.FileContent, U.Description, U.DateAdded, U.Subject_ID, 
                            T.Teacher_LastName + ', ' + T.Teacher_FirstName + ' ' + T.Teacher_MiddleName AS 'Teacher'
                            FROM UPLOAD_LECTURE U INNER JOIN
                            TEACHER_MAIN T ON U.Teacher_ID = T.Teacher_ID WHERE Subject_ID = @SID";

            using(SqlCommand com = new SqlCommand(View, con))
            {
                com.Parameters.AddWithValue("@SID", ID);
                using (SqlDataAdapter da = new SqlDataAdapter(com))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "File");
                    lvlectures.DataSource = ds;
                    lvlectures.DataBind();
                }
            }

        }

    }

    protected void lvlectures_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }

    protected void lvlectures_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }

    protected void lvlectures_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }

    protected void lnkDownload_Click(object sender, EventArgs e)
    {
    }
}