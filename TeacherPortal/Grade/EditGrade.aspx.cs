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
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewGrade.aspx");
        }
        else
        {
            int secid = 0;
            bool validsecid = int.TryParse(Request.QueryString["ID"].ToString(), out secid);

            if (validsecid)
            {
                if (!IsPostBack)
                {
                    GetID(secid);
                    
                    

                }
            }
            else
            {
                Response.Redirect("ViewGrade.aspx");
            }
        }

    }




    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT S.Subject_Name, G.Subject_ID FROM GRADE_INFO G INNER JOIN SUBJECT_MAIN S ON G.Subject_ID=S.Subject_ID
                           WHERE G.Grade_ID=@GID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@GID", ID);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ltSID.Text = dr["Subject_Name"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewGrade.aspx");
                    }
                }
            }
        }
    }










    protected void btnUpload_Click(object sender, EventArgs e)
    {
        Util audlog = new Util();
        Cryptic DE = new Cryptic();
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"UPDATE GRADE_INFO SET Grade_Value=@GV WHERE Grade_ID=@GID";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@GID", Request.QueryString["ID"].ToString());

                cmd.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());

                cmd.Parameters.AddWithValue("@GV", txtGrade.Text);

                cmd.ExecuteNonQuery();
                audlog.AuditLogAdmin(DE.Encrypt("Edit Grade"), int.Parse(Session["user_id"].ToString()), DE.Encrypt("Edited by Teacher "
                        + Session["teacher_firstname"].ToString() + " " + Session["teacher_middlename"].ToString() + Session["teacher_lastname"].ToString()));
                Response.Redirect("ViewGrade.aspx");

            }
        }

    }
}
