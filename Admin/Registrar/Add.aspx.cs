using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class TeacherPortal_Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"INSERT INTO ANNOUNCEMENT(Title, Image, Description, DateAdded) 
                            VALUES (@Title, @Image, @Description, @DateAdded)";

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
 
                cmd.Parameters.AddWithValue("@Title", txtTitle.Text);
                cmd.Parameters.AddWithValue("@Image", DateTime.Now.ToString("yyyyMMddhhmmss") + "-" + fuImage.FileName);
                cmd.Parameters.AddWithValue("@Description", Server.HtmlEncode(txtDescription.Text));
                cmd.Parameters.AddWithValue("@DateAdded", DateTime.Now);
                
                cmd.ExecuteNonQuery();
                Response.Redirect("Index.aspx");

            }
        }

    }
}