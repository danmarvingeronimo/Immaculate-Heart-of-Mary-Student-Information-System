using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

//DAN MARVIN GERONIMO

public partial class Parent_LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Parent_ID FROM PARENT_INFO 
                WHERE User_ID=@User_ID AND Parent_PW=@Parent_PW";

            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@User_ID", txtUserID.Text);
                WickedEye.Parameters.AddWithValue("@Parent_PW", txtPassword.Text);

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    if (Chuu2.HasRows)
                    {
                        while (Chuu2.Read())
                        {
                            Session["parent_id"] = Chuu2["Parent_ID"].ToString();
                        }
                        Response.Redirect("Dashboard.aspx");
                    }

                    else
                    {
                        error.Visible = true;
                    }
                }

            }
        }

    }
}
