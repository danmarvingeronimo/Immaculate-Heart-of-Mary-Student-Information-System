using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Faculty_Section_SectionDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["ID"]==null)
        {
            Response.Redirect("ViewSection.aspx");
        }
        else
        {
            int secid = 0;
            bool validsecid = int.TryParse(Request.QueryString["ID"].ToString(), out secid);

            if(validsecid)
            {
                if(!IsPostBack)
                {
                    GetData(secid);
                }
            }
            else
            {
                Response.Redirect("ViewSubject.aspx");
            }
        }
    }

    void GetData(int ID)
    {
        using(SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Section_ID, Section_Name, User_ID, Year_level FROM SECTION WHERE Section_ID=@SID ";
            con.Open();
            using(SqlCommand com = new SqlCommand(SQL,con))
            {
                com.Parameters.AddWithValue("@SID", ID);

                using(SqlDataReader dr = com.ExecuteReader())
                {
                    if(dr.HasRows)
                    {
                        while(dr.Read())
                        {
                            ltID.Text = dr["Section_ID"].ToString();
                            txtSName.Text = dr["Section_Name"].ToString();
                            txtYL.Text = dr["Year_level"].ToString();
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
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using(SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            Util audlog = new Util();
            Cryptic DE = new Cryptic();
            string sql = @"UPDATE SECTION SET Section_Name=@SN,Year_Level=@YL WHERE Section_ID = @SID";
            con.Open();

            using(SqlCommand com = new SqlCommand(sql,con))
            {
                //Audit Session
                com.Parameters.AddWithValue("@Admin_ID", Session["Admin_ID"].ToString());
                //
                com.Parameters.AddWithValue("@SN", txtSName.Text);
                com.Parameters.AddWithValue("@YL", txtYL.Text);
                com.Parameters.AddWithValue("@SID", Request.QueryString["ID"].ToString());
                com.ExecuteNonQuery();
                audlog.AuditLogAdmin(DE.Encrypt("Editing Details for Section"), int.Parse(Session["user_id"].ToString()), DE.Encrypt("Edited Section by Registrar "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));
                Response.Redirect("ViewSection.aspx");
            }
        }

    }
}