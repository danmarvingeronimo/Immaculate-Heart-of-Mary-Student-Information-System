using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_IT_Admin_ITAdmin_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

            //GetAdmin();
            GetIT();
            GetRegistrar();
            GetAccounting();
            GetFaculty();
            GetSection();
            GetStudentNew();
            GetStudentPending();


        }

    }

    //void GetAdmin()
    //{
    //    using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
    //    {
    //        Rikka.Open();
    //        string Takanashi = @"SELECT COUNT(*) FROM ADMIN_MAIN";
    //        using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
    //        {
    //            lbadmin.Text = WickedEye.ExecuteScalar().ToString();
    //        }
    //    }
    //}


     void GetIT()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM ADMIN_MAIN WHERE UserType_ID = 1";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbIT.Text = WickedEye.ExecuteScalar().ToString();
            }
        }
    }


    void GetRegistrar()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM ADMIN_MAIN WHERE UserType_ID = 2";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbregist.Text = WickedEye.ExecuteScalar().ToString();
            }
        }
    }

    void GetAccounting()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM ADMIN_MAIN WHERE UserType_ID = 3";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbaccount.Text = WickedEye.ExecuteScalar().ToString();
            }
        }
    }
    
    void GetFaculty()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM TEACHER_MAIN WHERE Teacher_ID !=7 ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbteach.Text = WickedEye.ExecuteScalar().ToString();
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

    void GetStudentNew()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM STUDENT_MAIN WHERE Status_ID = 1 ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbstudnew.Text = WickedEye.ExecuteScalar().ToString();
            }
        }
    }

    void GetStudentPending ()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT COUNT(*) FROM STUDENT_MAIN WHERE Status_ID = 3 ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                lbstudpen.Text = WickedEye.ExecuteScalar().ToString();
            }
        }
    }
}