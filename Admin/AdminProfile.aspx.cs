using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AdminProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProfile();
        }
    }
    void GetProfile()
    {
        using (SqlConnection za = new SqlConnection(Util.GetConnection()))
        {
            za.Open();
            string Piz = @"Select ADMIN_MAIN.User_ID, ADMIN_MAIN.First_Name, ADMIN_MAIN.Middle_Name,ADMIN_MAIN.Last_Name,USER_TYPE.UserType_Desc from ADMIN_MAIN 
            INNER JOIN USER_TYPE ON USER_TYPE.UserType_ID=ADMIN_MAIN.UserType_ID WHERE ADMIN_MAIN.Admin_ID=@AID ";
            using (SqlCommand com = new SqlCommand(Piz, za))
            {
                com.Parameters.AddWithValue("@AID", Session["admin_id"].ToString());
                using (SqlDataReader dr = com.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        User_ID.Text = dr["User_ID"].ToString();
                        First_Name.Text = dr["First_Name"].ToString();
                        Middle_Name.Text = dr["Middle_Name"].ToString();
                        Last_Name.Text = dr["Last_Name"].ToString();
                        User_Desc.Text = dr["Usertype_Desc"].ToString();

                    }
                }
            }
        }
    }
}