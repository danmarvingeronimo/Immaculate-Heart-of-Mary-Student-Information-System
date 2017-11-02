using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//Nathaniel Collins S. Ortiz
//Dan Marvin Geronimo

public partial class Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("StudentList.aspx");
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
                    GetSection();

                }
            }
            else
            {
                Response.Redirect("StudentList.aspx");
            }
        }

    }


    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Student_ID, Last_Name + ', ' + First_Name + ' ' + Middle_Name AS 'Student' FROM STUDENT_MAIN  
                            WHERE Student_ID=@SID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@SID", ID);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ltSID.Text = dr["Student"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewSubject.aspx");
                    }
                }
            }
        }

    }

    public static int Yearlevel(int ID)
    {
        int Yearlevel = 0;
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @"SELECT Year_level FROM STUDENT_MAIN WHERE Student_ID=@SID";
            Rikka.Open();
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@SID", ID);
                using (SqlDataReader dr = WickedEye.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Yearlevel = int.Parse(dr["Year_level"].ToString());
                        }
                    }

                }
            }
            return Yearlevel;
        }

    }

    void GetSection()
    {
        int yearlvl = Yearlevel(int.Parse(Request.QueryString["ID"].ToString()));
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Section_ID, Year_level + ' - ' + Section_Name AS 'Section' FROM SECTION WHERE Year_level=@YL";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@YL", yearlvl);

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    ddlSection.DataSource = Chuu2;
                    ddlSection.DataTextField = "Section";
                    ddlSection.DataValueField = "Section_ID";
                    ddlSection.DataBind();

                    ddlSection.Items.Insert(0, new ListItem("Select a Section.", ""));

                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Util audlog = new Util();
        Cryptic DE = new Cryptic();
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"UPDATE STUDENT_MAIN SET Section_ID=@Section_ID WHERE
                                Student_ID=@Student_ID";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                //Subject
                WickedEye.Parameters.AddWithValue("@Section_ID", ddlSection.Text);
                WickedEye.Parameters.AddWithValue("@Student_ID", Request.QueryString["ID"].ToString());


                WickedEye.ExecuteNonQuery();
                audlog.AuditLogAdmin(DE.Encrypt("Assigned Student Section"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("Input assigned by "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));
                Response.Redirect("StudentList.aspx");

            }
        }
    }
}