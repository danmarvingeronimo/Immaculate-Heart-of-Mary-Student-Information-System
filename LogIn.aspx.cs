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
        if (!IsPostBack)
        {

        }
    }



    void LogInStudent()

    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            Rikka.Open();

            string Takanashi = @"SELECT Student_ID, First_Name, Middle_Name, Last_Name, UserType_ID FROM STUDENT_MAIN
                                 WHERE User_ID=@User_ID AND Student_PW=@Student_PW";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@User_ID", txtUserID.Text);
                WickedEye.Parameters.AddWithValue("@Student_PW", txtPassword.Text);

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    if (Chuu2.HasRows)
                    {
                        while (Chuu2.Read())
                        {
                            Session["Student_ID"] = Chuu2["Student_ID"].ToString();
                            Session["First_Name"] = Chuu2["First_Name"].ToString();
                            Session["Middle_Name"] = Chuu2["Middle_Name"].ToString();
                            Session["Last_Name"] = Chuu2["Last_Name"].ToString();
                            Session["UserType_ID"] = Chuu2["UserType_ID"].ToString();


                        }

                        //Audit Log of Session ID
                        //Nathaniel Collins S. Ortiz V
                        audlog.AuditLogStudent(DE.Encrypt("Log-In"), int.Parse(Session["Student_ID"].ToString()), DE.Encrypt("Logged-In by "
                            + Session["First_Name"].ToString() + " " + Session["Middle_Name"].ToString() + " " + Session["Last_Name"].ToString()));

                        //dmg
                        if (Session["UserType_ID"].ToString() == "1")
                        {
                            Response.Redirect("~/Admin/IT Admin/ITAdmin_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "2")
                        {
                            Response.Redirect("~/Admin/Registrar/Registrar_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "3")
                        {
                            Response.Redirect("~/Admin/Registrar/Registrar_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "4")
                        {
                            Response.Redirect("~/Admin/Principal/Principal_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "5")
                        {
                            Response.Redirect("~/TeacherPortal/Homepage.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "6")
                        {
                            Response.Redirect("~/Student Portal/Homepage.aspx");

                        }
                    }

                    else
               
                    error.Visible = true;

                }
            }
        }
    }


    void LogInFaculty()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            Rikka.Open();

            string Takanashi = @"SELECT Teacher_ID, Teacher_FirstName, Teacher_MiddleName, Teacher_LastName, UserType_ID FROM TEACHER_MAIN
                                 WHERE User_ID=@User_ID AND Teacher_PW=@Teacher_PW";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@User_ID", txtUserID.Text);
                WickedEye.Parameters.AddWithValue("@Teacher_PW", txtPassword.Text);

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    if (Chuu2.HasRows)
                    {
                        while (Chuu2.Read())
                        {
                            Session["teacher_id"] = Chuu2["Teacher_ID"].ToString();
                            Session["teacher_FirstName"] = Chuu2["Teacher_FirstName"].ToString();
                            Session["teacher_MiddleName"] = Chuu2["Teacher_MiddleName"].ToString();
                            Session["teacher_LastName"] = Chuu2["Teacher_LastName"].ToString();
                            Session["UserType_ID"] = Chuu2["UserType_ID"].ToString();


                        }

                        //Audit Log of Session ID
                        //Nathaniel Collins S. Ortiz V
                        audlog.AuditLogTeacher(DE.Encrypt("Log-In"), int.Parse(Session["teacher_id"].ToString()), DE.Encrypt("Logged-In by "
                            + Session["teacher_FirstName"].ToString() + " " + Session["teacher_MiddleName"].ToString() + " " + Session["teacher_LastName"].ToString()));

                        //dmg
                        if (Session["UserType_ID"].ToString() == "1")
                        {
                            Response.Redirect("~/Admin/IT Admin/ITAdmin_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "2")
                        {
                            Response.Redirect("~/Admin/Registrar/Registrar_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "3")
                        {
                            Response.Redirect("~/Admin/Accounting/AccountingIndex.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "4")
                        {
                            Response.Redirect("~/Admin/Principal/Principal_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "5")
                        {
                            Response.Redirect("~/TeacherPortal/Homepage.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "6")
                        {
                            Response.Redirect("~/Student Portal/StudentProfile.aspx");
                        }

                    }

                    else
                  
                    error.Visible = true;

                }
            }
        }
    }


    void LogInAdmin()
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            Rikka.Open();

            string Takanashi = @"SELECT Admin_ID,First_Name,Middle_Name,Last_Name, UserType_ID FROM ADMIN_MAIN 
                           WHERE User_ID=@User_ID AND Admin_PW=@Admin_PW";

            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@User_ID", txtUserID.Text);
                WickedEye.Parameters.AddWithValue("@Admin_PW", txtPassword.Text);

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
                            Session["UserType_ID"] = Chuu2["UserType_ID"].ToString();


                        }


                        //Audit Log of Session ID
                        //Nathaniel Collins S. Ortiz V
                        audlog.AuditLogAdmin(DE.Encrypt("Log-In"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("Logged-In by "
                            + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));
                        //audlog.AuditLogAdmin("Log-In", int.Parse(Session["admin_id"].ToString()), "Logged-In by "
                        //    + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString());

                        //dmg
                        if (Session["UserType_ID"].ToString() == "1")
                        {
                            Response.Redirect("~/Admin/IT Admin/ITAdmin_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "2")
                        {
                            Response.Redirect("~/Admin/Registrar/Registrar_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "3")
                        {
                            Response.Redirect("~/Admin/Accounting/Accounting_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "4")
                        {
                            Response.Redirect("~/Admin/Principal/Principal_index.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "5")
                        {
                            Response.Redirect("~/TeacherPortal/Welcome.aspx");
                        }
                        else if (Session["UserType_ID"].ToString() == "6")
                        {
                            Response.Redirect("~/Student Portal/StudentProfile.aspx");
                        }



                    }

                    else
                    error.Visible = true;
                



                }
            }
        }
    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {

        if (ctrlGoogleReCaptcha.Validate())
        {
            LogInFaculty();
            LogInAdmin();
            LogInStudent();

        }
        else
        {
            captcha.Visible = true;
            error.Visible = false;
            txtUserID.Text = string.Empty;
            txtPassword.Text = string.Empty;
           


        }

    }

}