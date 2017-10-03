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
            string cheese = @"INSERT INTO SECTION(Section_Name, Year_level)
                            VALUES(@Section_Name, @Year_level) ";



            using(SqlCommand bread = new SqlCommand(cheese,sandwich))
            {
                //bread.Parameters.AddWithValue("@Section_ID",int.Parse(txtSectionID.Text));
                bread.Parameters.AddWithValue("@Section_Name", txtSectionName.Text);
                //bread.Parameters.AddWithValue("@Time_Stamp", DateTime.Now);
                bread.Parameters.AddWithValue("@Year_level", int.Parse(txtYL.Text));
                bread.ExecuteNonQuery();
                Response.Redirect("ViewSection.aspx");
            }
        }

    }
}