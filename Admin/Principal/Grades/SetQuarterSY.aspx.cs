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
            GetSY();
            GetQuarter();
        }

    }




   

    void GetSY()
    {
        
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            Cryptic DE = new Cryptic();

            

                string Takanashi = @"SELECT SY_ID, School_Year FROM SY";
                using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
                {

                    using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                    {
                        ddlSY.DataSource = Chuu2;
                        ddlSY.DataTextField = "School_Year";
                        ddlSY.DataValueField = "SY_ID";
                        ddlSY.DataBind();

                        ddlSY.Items.Insert(0, new ListItem("Enter the School Year.", ""));

                    }
                }

             
                
                
            
            
        }
    }

    void GetQuarter()
    {

        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            Cryptic DE = new Cryptic();



            string Takanashi = @"SELECT Quarter_ID, Quarter FROM QUARTER ";
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {

                using (SqlDataReader Chuu2 = WickedEye.ExecuteReader())
                {
                    ddlQT.DataSource = Chuu2;
                    ddlQT.DataTextField = "Quarter";
                    ddlQT.DataValueField = "Quarter_ID";
                    ddlQT.DataBind();

                    ddlQT.Items.Insert(0, new ListItem("Enter the Quarter.", ""));

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
            string Takanashi = @"UPDATE ENCODING_STATUS SET Quarter_ID=@QID, SY_ID=@SY WHERE
                                EncodingStat_ID=1";


            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());

                //Subject
                WickedEye.Parameters.AddWithValue("@QID", ddlQT.Text);
                WickedEye.Parameters.AddWithValue("@SY", ddlSY.Text);


                WickedEye.ExecuteNonQuery();
                

                //Nathaniel Collins S. Ortiz
                audlog.AuditLogAdmin(DE.Encrypt("Assigned SY and Quarter"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("School Year and Quarter assigned by "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));

                Response.Redirect("EnableEncoding.aspx");
                

            }
        }
    }

    protected void lvFaculty_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        {

        }
    }


}

