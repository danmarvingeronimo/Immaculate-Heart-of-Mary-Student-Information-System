using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Faculty_Subject_SubjectDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //user did not select a record
        if(Request.QueryString["ID"] == null)
        {
            Response.Redirect("ViewSubject.aspx");
        }
        else //user selected a record
        {
            int subid = 0; // initial Value
            bool validsubid = int.TryParse(Request.QueryString["ID"].ToString(), out subid);

            if (validsubid) //ID is valid
            {
                if(!IsPostBack)
                {
                    GetData(subid);

                }
            }
            else //ID is invalid(or NOT a number)
            {
                Response.Redirect("ViewSubject.aspx");
            }
        }
    }

    void GetData(int ID)
    {
        using(SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Subject_ID, Subject_Name, Subject_Desc,Identity_Code,User_ID FROM SUBJECT_MAIN WHERE Subject_ID=@SID";
            con.Open();

            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@SID", ID);

                using(SqlDataReader dr = com.ExecuteReader())
                {
                    if(dr.HasRows)
                    {
                        while(dr.Read())
                        {
                            ltID.Text = dr["Subject_ID"].ToString();
                            txtSName.Text = dr["Subject_Name"].ToString();
                            TxtSubdes.Text = dr["Subject_Desc"].ToString();
                            txtIdenCo.Text = dr["Identity_Code"].ToString();
                            txtUID.Text = dr["User_ID"].ToString();

                            
                        }
                    }
                    else
                    {
                        Response.Redirect("ViewSubject.aspx");
                    }
                }
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using(SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string sql = @"UPDATE SUBJECT_MAIN SET Subject_Name=@SN,Subject_Desc=@SD,Identity_Code=@IC, User_ID=@UID WHERE Subject_ID=@SID";
            con.Open();

            using (SqlCommand com = new SqlCommand(sql,con))
            {
                com.Parameters.AddWithValue("@SN", txtSName.Text);
                com.Parameters.AddWithValue("@SD", TxtSubdes.Text);
                com.Parameters.AddWithValue("@IC", txtIdenCo.Text);
                com.Parameters.AddWithValue("@UID", txtUID.Text);
                com.Parameters.AddWithValue("@SID", Request.QueryString["ID"].ToString());
                com.ExecuteNonQuery();
            }
        }
        Response.Redirect("ViewSubject.aspx");
    }
}