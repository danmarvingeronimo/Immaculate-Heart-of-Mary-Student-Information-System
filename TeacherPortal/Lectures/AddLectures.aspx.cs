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
        if(!IsPostBack)
        {
            GetSubj();
        }
    }


    void GetSubj()
    {

        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Subject_ID, Subject_Name FROM SUBJECT_MAIN WHERE Teacher_ID=@TID";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    ddlSubject.DataSource = Chuu2;
                    ddlSubject.DataTextField = "Subject_Name";
                    ddlSubject.DataValueField = "Subject_ID";
                    ddlSubject.DataBind();

                    ddlSubject.Items.Insert(0, new ListItem("Select a subject.", ""));

                }
            }
        }
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            Util audlog = new Util();
            con.Open();
            string SQL = @"INSERT INTO UPLOAD_LECTURE(Title, Description, FileContent, DateAdded, Teacher_ID, Subject_ID) 
                            VALUES (@Title, @Description, @FileContent, @DateAdded, @TeacherID, @Subject)";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                //audit
                cmd.Parameters.AddWithValue("@TeacherID", Session["Teacher_ID"].ToString());
                //

                cmd.Parameters.AddWithValue("@Subject", ddlSubject.Text);

                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);

                string fileExt = Path.GetExtension(FileContent.FileName);
                string id = Guid.NewGuid().ToString();
                cmd.Parameters.AddWithValue("@FileContent", id + fileExt);
                FileContent.SaveAs(Server.MapPath("~/img/files/" + id + fileExt));

                cmd.Parameters.AddWithValue("@DateAdded", DateTime.Now);


                cmd.ExecuteNonQuery();
                audlog.AuditLogTeacher("Add Lectures", int.Parse(Session["teacher_id"].ToString()), "Added Lectures by "
                            + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString());
                Response.Redirect("ViewLectures.aspx");

            }
        }

    }
}
