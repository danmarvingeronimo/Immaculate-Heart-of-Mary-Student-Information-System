using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Student_Portal_ViewHW_Student_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewHW(Student).aspx");
        }
        else
        {
            int fileid = 0;
            bool validfileid = int.TryParse(Request.QueryString["ID"].ToString(), out fileid);

            if (validfileid)
            {
                if (!IsPostBack)
                {
                    ViewHW(fileid);
                }
            }
            else
            {
                Response.Redirect("ViewHW(Student).aspx");
            }
        }
    }
    void ViewHW(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String Send = @"Select U.UploadHW_ID, U.Title, U.FileContent, U.Description, U.DateAdded, U.Subject_ID, 
                            T.Teacher_LastName + ', ' + T.Teacher_FirstName + ' ' + T.Teacher_MiddleName AS 'Teacher'
                            FROM UPLOAD_HW U INNER JOIN
                            TEACHER_MAIN T ON U.Teacher_ID = T.Teacher_ID WHERE Subject_ID=@SID";

            using (SqlCommand com = new SqlCommand(Send, con))
            {
                com.Parameters.AddWithValue("@SID", ID);
                using (SqlDataAdapter da = new SqlDataAdapter(com))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "File");
                    lvHW.DataSource = ds;
                    lvHW.DataBind();
                }
            }
        }
    }

    protected void lvHW_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }

    protected void lvHW_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }

    protected void lvHW_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
}