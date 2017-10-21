using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_IT_Admin_UpdateStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("StudentList.aspx");
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
                }
            }
            else
            {
                Response.Redirect("StudentList.aspx");
            }
        }
    }

    void GetData(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"SELECT Student_ID, First_Name, Middle_Name, Last_Name FROM STUDENT_MAIN WHERE Student_ID=@Student_ID";
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@Student_ID", ID);

                using(SqlDataReader SDR = com.ExecuteReader())
                {
                    if(SDR.HasRows)
                    {
                        while(SDR.Read())
                        {
                            ltID.Text = SDR["Student_ID"].ToString();
                            txtFN.Text = SDR["First_Name"].ToString();
                            txtMN.Text = SDR["Middle_Name"].ToString();
                            txtLN.Text = SDR["Last_Name"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("StudentList.aspx");
                    }
                }
            }
        }
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            Util audlog = new Util();
            con.Open();
            string SQL = @"UPDATE STUDENT_MAIN SET User_ID=@User_ID, Status_ID=@Status_ID WHERE Student_ID=@Student_ID";


            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                //Audit Session
                cmd.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());
                //

                cmd.Parameters.AddWithValue("@User_ID", txtID.Text);

                cmd.Parameters.AddWithValue("@Status_ID", txtStatus.Text);
                cmd.Parameters.AddWithValue("@Student_ID", Request.QueryString["ID"].ToString());
                cmd.ExecuteNonQuery();
                audlog.AuditLogAdmin("Update Students", int.Parse(Session["admin_id"].ToString()), "Edited Section by "
                            + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString());
                Response.Redirect("StudentList.aspx");


                
            }

          

        }
    }

}