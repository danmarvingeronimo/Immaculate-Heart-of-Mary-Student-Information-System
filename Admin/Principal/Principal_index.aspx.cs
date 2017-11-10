using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Prinicipal_Principal_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetFaculty();
            GetSubjects();
            GetSection();
        }


    }

    void GetFaculty()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM TEACHER_MAIN WHERE HomeroomStat_ID = 2 AND Section_ID = 21 AND Teacher_ID !=7 ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbfac.Text = WickedEye.ExecuteScalar().ToString();
            }
        }
    }

    void GetSubjects()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM SUBJECT_MAIN WHERE Teacher_ID =7 AND Subject_ID !=81 ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbsub.Text = WickedEye.ExecuteScalar().ToString();
            }
        }
    }

    void GetSection()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM SECTION WHERE SECTION_ID !=21 ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbsection.Text = WickedEye.ExecuteScalar().ToString();
            }
        }
    }
}