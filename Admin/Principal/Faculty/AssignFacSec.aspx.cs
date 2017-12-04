using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Principal_Faculty_AssignFacSec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            GetSections();
        }

    }




    public int HomeroomStatID(int ID)
    {
        int HomeroomStatID = 0;
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @"SELECT HomeroomStat_ID FROM TEACHER_MAIN WHERE Teacher_ID=@Teacher_ID";
            Rikka.Open();
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Teacher_ID", Request.QueryString["ID"].ToString());
                using (SqlDataReader dr = WickedEye.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            HomeroomStatID = int.Parse(dr["HomeroomStat_ID"].ToString());
                        }
                    }

                }
            }

        }

        return HomeroomStatID;
    }

    void GetSections()
    {
        int statID = HomeroomStatID(int.Parse(Request.QueryString["ID"].ToString()));
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            Cryptic DE = new Cryptic();

            if (statID == 2)
            {

                string Takanashi = @"SELECT Section_ID, Section_Name + ' - ' + Year_Level AS 'Section Name' FROM SECTION WHERE HomeStat!=1";
                using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
                {

                    using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                    {
                        ddlSection.DataSource = Chuu2;
                        ddlSection.DataTextField = "Section Name";
                        ddlSection.DataValueField = "Section_ID";
                        ddlSection.DataBind();

                        ddlSection.Items.Insert(0, new ListItem("Select a Section.", ""));

                    }
                }

             
                
                
            }
            else
            {
                ddlSection.Items.Insert(0, new ListItem("Cannot select a section.", ""));
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            Rikka.Open();
            string Takanashi = @"UPDATE TEACHER_MAIN SET Section_ID=@Section_ID, HomeroomStat_ID=@HID WHERE
                                Teacher_ID=@Teacher_ID

                                UPDATE SECTION SET HomeStat=@HomeID WHERE Section_ID=@Sec_ID";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());

                //Subject
                WickedEye.Parameters.AddWithValue("@Section_ID", ddlSection.Text);
                WickedEye.Parameters.AddWithValue("@HID", 1);

                WickedEye.Parameters.AddWithValue("@Teacher_ID", Request.QueryString["ID"].ToString());

                WickedEye.Parameters.AddWithValue("@HomeID", 1);
                WickedEye.Parameters.AddWithValue("@Sec_ID", ddlSection.Text);

                WickedEye.ExecuteNonQuery();

                //Nathaniel Collins S. Ortiz
                audlog.AuditLogAdmin(DE.Encrypt("Assigning Faculty with Homeroom Adviser"), int.Parse(Session["user_id"].ToString()), DE.Encrypt("Faculty assigned by Principal "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));
                Response.Redirect("FacultyList.aspx");

            }
        }
    }

    protected void lvFaculty_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        {

        }
    }


}

