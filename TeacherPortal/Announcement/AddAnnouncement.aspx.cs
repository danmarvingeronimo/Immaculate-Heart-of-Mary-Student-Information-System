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


public partial class TeacherPortal_AddAnnouncement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"INSERT INTO ANNOUNCEMENT(Title, Image, Description, DateAdded, Teacher_ID) 
                            VALUES (@Title, @Image, @Description, @DateAdded, @TeacherID)";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);

                string fileExt = Path.GetExtension(fuImage.FileName);
                string id = Guid.NewGuid().ToString();
                cmd.Parameters.AddWithValue("@Image", id + fileExt);
                fuImage.SaveAs(Server.MapPath("~/img/announcements/" + id + fileExt));

                cmd.Parameters.AddWithValue("@DateAdded", DateTime.Now);

                //cmd.Parameters.AddWithValue("@UploadedBy", txtUploadedBy.Text);
                cmd.Parameters.AddWithValue("@TeacherID", Session["Teacher_ID"].ToString());

                cmd.ExecuteNonQuery();
                Response.Redirect("ViewAnnouncement.aspx");

            }
        }

    }
}
