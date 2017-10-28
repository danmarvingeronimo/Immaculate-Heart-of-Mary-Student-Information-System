using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
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



    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
            using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
            {
                Util audlog = new Util();
                Rikka.Open();
                string Takanashi = @"SELECT Admin_ID,First_Name,Middle_Name,Last_Name FROM ADMIN_MAIN 
                WHERE User_ID=@User_ID AND Admin_PW=@Admin_PW AND UserType_ID=@UserType_ID";

                using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
                {
                    WickedEye.Parameters.AddWithValue("@User_ID", txtUserID.Text);
                    WickedEye.Parameters.AddWithValue("@Admin_PW", txtPassword.Text);
                    WickedEye.Parameters.AddWithValue("@UserType_ID", ddlUsers.Text);

                

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                    {
                        if (Chuu2.HasRows)
                        {
                        while (Chuu2.Read())
                        {
                            Session["admin_id"] = Chuu2["Admin_ID"].ToString();
                            Session["first_name"] = Chuu2["First_Name"].ToString();
                            Session["middle_name"] = Chuu2["Middle_Name"].ToString();
                            Session["last_name"] = Chuu2["Last_Name"].ToString();
                            
                        }

                        //Audit Log of Session ID
                        //Nathaniel Collins S. Ortiz V
                        audlog.AuditLogAdmin("Log-In", int.Parse(Session["admin_id"].ToString()),"Logged-In by "
                            + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString());


                        

                        //Verification of Access Level
                        //Dan Marvin Geronimo

                        

                        if (ddlUsers.Text == "1")
                        {
                            Response.Redirect("~/Admin/IT Admin/ITAdmin_index.aspx");
                        }
                        else if (ddlUsers.Text == "2")
                        {
                            Response.Redirect("~/Admin/Registrar/Registrar_index.aspx");
                        }
                        else if (ddlUsers.Text == "3")
                        {
                            Response.Redirect("~/Admin/Accounting/Accounting_index.aspx");
                        }
                        else if (ddlUsers.Text == "4")
                        {
                            Response.Redirect("~/Admin/Principal/Principal_index.aspx");
                        }

                        if(Request.QueryString == Session["admin_id"])
                        {
                            audlog.AuditLogAdmin("Log-In", int.Parse(Session["admin_id"].ToString()), "Logged-In by "
                            + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString());
                        }
                        if(Request.QueryString == Session["student_id"])
                        {
                            audlog.AuditLogStudent("Log-In", int.Parse(Session["admin_id"].ToString()), "Logged-In by "
                            + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString());
                        }

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