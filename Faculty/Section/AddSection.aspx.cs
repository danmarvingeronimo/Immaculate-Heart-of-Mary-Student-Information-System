using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Section_AddSection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection sandwich = new SqlConnection(Util.GetConnection()))
        {
            sandwich.Open();
            string cheese = @"INSERT INTO SECTION VALUES(@Section_Name,@Time_Stamp,@User_ID,@Year_Level) ";

            using(SqlCommand bread = new SqlCommand(cheese,sandwich))
            {
                //bread.Parameters.AddWithValue("@Section_ID",int.Parse(txtSectionID.Text));
                bread.Parameters.AddWithValue("@Section_Name", txtSectionName.Text);
                bread.Parameters.AddWithValue("@Time_Stamp", DateTime.Now);
                bread.Parameters.AddWithValue("@User_ID", int.Parse(txtUserID.Text));
                bread.Parameters.AddWithValue("@Year_Level", int.Parse(txtYL.Text));
                bread.ExecuteNonQuery();
                Response.Redirect("ViewSection.aspx");
            }
        }

    }
}