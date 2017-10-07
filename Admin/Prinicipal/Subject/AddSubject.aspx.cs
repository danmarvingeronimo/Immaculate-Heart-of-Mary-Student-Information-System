using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Faculty_Subject_AddSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using(SqlConnection yes =new SqlConnection(Util.GetConnection()))
        {
            yes.Open();
            string roundabout = @"INSERT INTO SUBJECT_MAIN VALUES(@Subject_Name,@Subject_Desc,@Identity_Code,@Time_Stamp,@User_ID)";

            using (SqlCommand jojo = new SqlCommand(roundabout, yes))
            {
                jojo.Parameters.AddWithValue("@Subject_Name", txtSubName.Text);
                jojo.Parameters.AddWithValue("@Subject_Desc", txtSubdes.Text);
                jojo.Parameters.AddWithValue("@Identity_Code", txtIdenCo.Text);
                jojo.Parameters.AddWithValue("@Time_Stamp", DateTime.Now);
                jojo.Parameters.AddWithValue("@User_ID", txtUID.Text);
                jojo.ExecuteNonQuery();
                Response.Redirect("ViewSubject.aspx");
            }
        }

    }
}