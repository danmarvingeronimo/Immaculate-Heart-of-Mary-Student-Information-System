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
            Response.Redirect("ViewUpload.aspx");
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
                Response.Redirect("ViewUpload.aspx");
            }
        }
    }

    void GetData(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT ID, Title, Description FROM TEACHER_PORTAL WHERE ID=@ID ";
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
                            ltID.Text = dr["ID"].ToString();
                            txtTitle.Text = dr["Title"].ToString();
                            txtDescription.Text = dr["Description"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewUpload.aspx");
                    }
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string sql = @"UPDATE TEACHER_PORTAL SET Title=@Title, Description=@Description WHERE ID=@ID";
            con.Open();

            using (SqlCommand com = new SqlCommand(sql, con))
            {
                com.Parameters.AddWithValue("@Title", txtTitle.Text);
                com.Parameters.AddWithValue("@Description", txtDescription.Text);
                com.Parameters.AddWithValue("@ID", Request.QueryString["ID"].ToString());
                com.ExecuteNonQuery();

                Response.Redirect("ViewUpload.aspx");
            }
        }

    }
}