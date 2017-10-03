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
            Response.Redirect("ViewAdmin.aspx");
        }
        else
        {
            int secid = 0;
            bool validsecid = int.TryParse(Request.QueryString["ID"].ToString(), out secid);

            if (validsecid)
            {
                if (!IsPostBack)
                {
                    GetData(secid);
                    GetUsers();
                }
            }
            else
            {
                Response.Redirect("ViewAdmin.aspx");
            }
        }
    }

    void GetData(int ID)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @"SELECT Admin_ID, User_ID, First_Name, Middle_Name, Last_Name FROM ADMIN_MAIN WHERE Admin_ID=@Admin_ID";
            Rikka.Open();
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Admin_ID", ID);

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    if (Chuu2.HasRows)
                    {
                        while (Chuu2.Read())
                        {
                            ltID.Text = Chuu2["Admin_ID"].ToString();
                            txtUID.Text = Chuu2["User_ID"].ToString();
                            txtFN.Text = Chuu2["First_Name"].ToString();
                            txtMN.Text = Chuu2["Middle_Name"].ToString();
                            txtLN.Text = Chuu2["Last_Name"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewSection.aspx");
                    }
                }
            }
        }
    }



    void GetUsers()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT UserType_ID, UserType_Desc FROM USER_TYPE ORDER BY UserType_ID";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    ddlUsers.DataSource = Chuu2;
                    ddlUsers.DataTextField = "UserType_Desc";
                    ddlUsers.DataValueField = "UserType_ID";
                    ddlUsers.DataBind();

                    ddlUsers.Items.Insert(0, new ListItem("Select your user type", ""));

                }
            }
        }
    }



    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"UPDATE ADMIN_MAIN SET First_Name=@First_Name, Middle_Name=@Middle_Name, Last_Name=@Last_Name,
                               UserType_ID=@UserType_ID WHERE Admin_ID=@Admin_ID";

            using(SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {

                //Admin Credentials (First Name, Last Name, etc.)

                WickedEye.Parameters.AddWithValue("@First_Name", txtFN.Text);
                WickedEye.Parameters.AddWithValue("@Middle_Name", txtMN.Text);
                WickedEye.Parameters.AddWithValue("@Last_Name", txtLN.Text);

                //Admin Access Level
                WickedEye.Parameters.AddWithValue("@UserType_ID", ddlUsers.Text);
                WickedEye.Parameters.AddWithValue("@Admin_ID", Request.QueryString["ID"].ToString());
                WickedEye.ExecuteNonQuery();
                Response.Redirect("ViewAdmin.aspx");

            }
        }
    }
}