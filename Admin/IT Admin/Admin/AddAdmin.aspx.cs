using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Section_AddSection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetUsers();
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

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Rikka.Open();
            string Takanashi = @"INSERT INTO ADMIN_MAIN(Admin_PW, First_Name, Last_Name, Middle_Name, User_ID, UserType_ID)
                            VALUES(@Admin_PW, @First_Name, @Last_Name, @Middle_Name, @User_ID, @UserType_ID) ";



            using(SqlCommand WickedEye = new SqlCommand(Takanashi,Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());

                WickedEye.Parameters.AddWithValue("@First_Name", txtFN.Text);
                WickedEye.Parameters.AddWithValue("@Last_Name", txtLN.Text);
                WickedEye.Parameters.AddWithValue("@Middle_Name", txtMN.Text);
                WickedEye.Parameters.AddWithValue("@User_ID", txtUID.Text);
                WickedEye.Parameters.AddWithValue("@Admin_PW", txtPass.Text);
                WickedEye.Parameters.AddWithValue("@UserType_ID", ddlUsers.Text);
                WickedEye.ExecuteNonQuery();
                //Nathaniel Collins S. Ortiz V
                audlog.AuditLogAdmin("Adding an Admin", int.Parse(Session["admin_id"].ToString()), "Added by "
                            + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString());
                Response.Redirect("ViewAdmin.aspx");
            }
        }

    }
}