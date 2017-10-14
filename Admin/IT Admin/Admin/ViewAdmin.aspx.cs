using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//DAN MARVIN GERONIMO

public partial class Admin_IT_Admin_ViewAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetAdmins();
    }
    void GetAdmins()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT A.Admin_ID, A.Last_Name + ', ' + A.First_Name + ' ' + A.Middle_Name AS 'Full Name', A.User_ID, U.UserType_Desc FROM ADMIN_MAIN A 
                                INNER JOIN USER_TYPE U ON A.UserType_ID = U.UserType_ID";

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                using (SqlDataAdapter Nibutani = new SqlDataAdapter(Chuu2Koi))
                {
                    DataSet Kumin = new DataSet();
                    Nibutani.Fill(Kumin, "ADMIN_MAIN");

                    lvAdmins.DataSource = Kumin;
                    lvAdmins.DataBind();


                }
            }
        }
    }
}
