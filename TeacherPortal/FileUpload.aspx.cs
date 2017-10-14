using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class TeacherPortal_Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"INSERT INTO TEACHER_PORTAL(Title, Description, FileContent, Date, UploadedBy) 
                            VALUES (@Title, @Description, @FileContent, @Date, @UploadedBy)";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);

                string fileExt = Path.GetExtension(FileContent.FileName);
                string id = Guid.NewGuid().ToString();
                cmd.Parameters.AddWithValue("@FileContent", id + fileExt);
                FileContent.SaveAs(Server.MapPath("~/img/files/" + id + fileExt));

                cmd.Parameters.AddWithValue("@Date", DateTime.Now);

                cmd.Parameters.AddWithValue("@UploadedBy", txtUploadedBy.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("ViewFileUpload.aspx");

            }
        }

    }
}
