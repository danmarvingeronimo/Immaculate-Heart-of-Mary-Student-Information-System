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

    }
    void ViewHW()
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String Send = @"Select U.UploadHW_ID, U.Title, U.FileContent, U.Description, U.DateAdded, U.Subject_ID, 
                            T.Teacher_LastName + ', ' + T.Teacher_FirstName + ' ' + T.Teacher_MiddleName AS 'Teacher'
                            FROM UPLOAD_HW U INNER JOIN
                            TEACHER_MAIN T ON U.Teacher_ID = T.Teacher_ID";
            using (SqlCommand com = new SqlCommand(Send, con))
            {
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