using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
//Nathaniel Collins S. Ortiz
public partial class Faculty_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
       using(SqlConnection con = new SqlConnection(Util.GetConnection()))
       {
           con.Open();
           string Cheese = @"SELECT User_ID, Teacher_ID from TEACHER_MAIN Where User_ID=@User_ID AND Teacher_PW=@Teacher_PW ";

           using (SqlCommand meep = new SqlCommand(Cheese,con))
           {
               meep.Parameters.AddWithValue("@User_ID", txtUserID.Text);
               meep.Parameters.AddWithValue("@Teacher_PW", txtPassword.Text);
               using (SqlDataReader dm = meep.ExecuteReader())
               {
                   if (dm.HasRows)
                   {
                       while (dm.Read())
                       {
                           Session["userid"] = dm["User_ID"].ToString();
                           Session["teacherid"] = dm["Teacher_ID"].ToString();
                           
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