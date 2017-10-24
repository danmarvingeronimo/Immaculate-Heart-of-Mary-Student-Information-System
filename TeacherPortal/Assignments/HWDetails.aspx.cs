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
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewHW.aspx");
        }
        else
        {
            int fileid = 0;
            bool validfileid = int.TryParse(Request.QueryString["ID"].ToString(), out fileid);

            if (validfileid)
            {
                if (!IsPostBack)
                {
                    GetData(fileid);
                }
            }
            else
            {
                Response.Redirect("ViewHW.aspx");
            }
        }
    }

    void GetData(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT UploadHW_ID, Title, Description FROM UPLOAD_HW WHERE UploadHW_ID=@ID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@ID", ID);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ltID.Text = dr["UploadHW_ID"].ToString();
                            txtTitle.Text = dr["Title"].ToString();
                            txtDescription.Text = dr["Description"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewHW.aspx");
                    }
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            Util audlog = new Util();
            string sql = @"UPDATE UPLOAD_HW SET Title=@Title, Description=@Description WHERE UploadHW_ID=@ID";
            con.Open();

            using (SqlCommand com = new SqlCommand(sql, con))
            {
                //audit
                com.Parameters.AddWithValue("@TeacherID", Session["Teacher_ID"].ToString());
                //
                com.Parameters.AddWithValue("@Title", txtTitle.Text);
                com.Parameters.AddWithValue("@Description", txtDescription.Text);
                com.Parameters.AddWithValue("@ID", Request.QueryString["ID"].ToString());
                com.ExecuteNonQuery();
                audlog.AuditLogTeacher("Homework Details", int.Parse(Session["teacher_id"].ToString()), "Edited by "
                           + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString());

                Response.Redirect("ViewHW.aspx");
            }
        }

    }
}