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
      

        
            {
                if (!IsPostBack)
                {
                    GetSubj();
                }
            
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
            con.Open();
            string SQL = @"INSERT INTO ANNOUNCEMENT(Title, Image, Description, DateAdded, Teacher_ID, Subject_ID) 
                            VALUES (@Title, @Image, @Description, @DateAdded, @TeacherID, @Subject)";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                Cryptic DE = new Cryptic();
                Util audlog = new Util();
                //audit
                cmd.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());
                //
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@Subject", ddlSubject.Text);

                string fileExt = Path.GetExtension(fuImage.FileName);
                string id = Guid.NewGuid().ToString();
                cmd.Parameters.AddWithValue("@Image", id + fileExt);
                fuImage.SaveAs(Server.MapPath("~/img/announcements/" + id + fileExt));

                cmd.Parameters.AddWithValue("@DateAdded", DateTime.Now);

                cmd.Parameters.AddWithValue("@TeacherID", Session["Teacher_ID"].ToString());

                cmd.ExecuteNonQuery();
                audlog.AuditLogAdmin(DE.Encrypt("Add Announcements"), int.Parse(Session["user_id"].ToString()), DE.Encrypt("Added by Teacher "
                           + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString()));
                //audlog.AuditLogTeacher("Adding Announcements", int.Parse(Session["teacher_id"].ToString()), "Added by "
                //           + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString());

                Response.Redirect("ViewAnnouncement.aspx");

            }
        }

    }
}
