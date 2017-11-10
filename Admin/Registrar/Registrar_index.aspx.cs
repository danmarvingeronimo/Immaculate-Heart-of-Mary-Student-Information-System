using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Registrar_Registrar_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            
            GetStudentNew();
            GetSection();

        }
    }

    void GetStudentNew()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM STUDENT_MAIN WHERE Section_ID = 21 ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbstudnew.Text = WickedEye.ExecuteScalar().ToString();
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