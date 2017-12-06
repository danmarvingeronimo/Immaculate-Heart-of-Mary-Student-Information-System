using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Principal_Faculty_AssignFacSec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            GetStatus();
        }

    }




   

    void GetStatus()
    {
        
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            Cryptic DE = new Cryptic();

                string Takanashi = @"SELECT Grade_StatusID, Description FROM GRADE_INPUT_STAT ";
                using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
                {

                    using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                    {
                        ddlStatus.DataSource = Chuu2;
                        ddlStatus.DataTextField = "Description";
                        ddlStatus.DataValueField = "Grade_StatusID";
                        ddlStatus.DataBind();

                        ddlStatus.Items.Insert(0, new ListItem("Enable or Disable Grade Encoding.", ""));

                    }
                }

             
                
                
            
            
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            Rikka.Open();
            string Takanashi = @"UPDATE ENCODING_STATUS SET Grade_StatusID=@GID WHERE
                                EncodingStat_ID=1";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());

                //Subject
                WickedEye.Parameters.AddWithValue("@GID", ddlStatus.Text);
                


               

                WickedEye.ExecuteNonQuery();

                //Nathaniel Collins S. Ortiz
                audlog.AuditLogAdmin(DE.Encrypt("Updated Encoding Status"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("Encoding Status updated by "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));

                if (ddlStatus.Text == "1")
                {
                    Response.Redirect("SetQuarterSY.aspx");

                }
                else
                {
                    error.Visible = true;

                }
            }
        }
    }

    protected void lvFaculty_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        {

        }
    }


}

