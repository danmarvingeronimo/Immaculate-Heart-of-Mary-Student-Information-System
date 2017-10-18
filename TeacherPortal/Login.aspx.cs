using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TeacherPortal_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"Select Teacher_ID FROM TEACHER_MAIN
                  WHERE User_ID=@User_ID AND Teacher_PW=@Teacher_PW";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@User_ID", txtUID.Text);
                cmd.Parameters.AddWithValue("@Teacher_PW", txtPWD.Text);
                using (SqlDataReader data = cmd.ExecuteReader())
                {
                    if (data.HasRows)
                    {
                        while (data.Read())
                        {
                            Session["teacher_id"] = data["Teacher_ID"].ToString();
                        }
                        Response.Redirect("Welcome.aspx");
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