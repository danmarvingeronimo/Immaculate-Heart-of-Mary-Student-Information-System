using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//DAN MARVIN GERONIMO

public partial class Admin_IT_Admin_AdminDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("FacultyList.aspx");
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
                    GetSubj();
                    
                }
            }
            else
            {
                Response.Redirect("FacultyList.aspx");
            }
        }

    }

    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Teacher_FirstName + '. ' + Teacher_Lastname + ' ' + Teacher_MiddleName AS 'Teacher Name'  FROM TEACHER_MAIN  WHERE Teacher_ID=@TID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@TID", ID);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ltSID.Text = dr["Teacher Name"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("FacultyID.aspx");
                    }
                }
            }
        }
    }


    //To get subjects
    void GetSubj()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Subject_ID, Subject_Name FROM SUBJECT_MAIN ORDER BY Subject_ID";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
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



    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"UPDATE TEACHER_MAIN SET Subject_ID=@Subject_ID WHERE
                                Teacher_ID=@Teacher_ID";
                               

            using(SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                //Subject
                WickedEye.Parameters.AddWithValue("@Subject_ID", ddlSubject.Text);
                WickedEye.Parameters.AddWithValue("@Teacher_ID", Request.QueryString["ID"].ToString());


                WickedEye.ExecuteNonQuery();
                Response.Redirect("FacultyList.aspx");

            }
        }
    }
}