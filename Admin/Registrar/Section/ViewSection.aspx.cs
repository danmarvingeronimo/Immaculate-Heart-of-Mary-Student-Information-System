using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Section_ViewSection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ViewSection();
        }
    }
   void ViewSection()
   {
       using (SqlConnection please = new SqlConnection(Util.GetConnection()))
       {
           please.Open();
           String Send = @"Select Section_ID, Section_Name, Year_level from SECTION WHERE Section_ID!=21";

           using(SqlCommand help= new SqlCommand(Send,please))
           {
               using (SqlDataAdapter da = new SqlDataAdapter(help))
               {
                   DataSet ds = new DataSet();
                   da.Fill(ds,"Section");

                   lvSection.DataSource = ds;
                   lvSection.DataBind();
               }
           }
       }
   }
   //void GetSection(string keyword)
   //{
   //    using (SqlConnection con = new SqlConnection(Util.GetConnection()))
   //    {
   //        string SQL =
   //    }
   //}
    
    protected void lvSection_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Util audlog = new Util();
        Cryptic DE = new Cryptic();
        Literal ltSectionID = (Literal)e.Item.FindControl("ltSectionID");

        if(e.CommandName=="delsec")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string DELETE = @"DELETE FROM SECTION WHERE Section_ID=@SecID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@SecID", ltSectionID.Text);
                    Nero.ExecuteNonQuery();
                    audlog.AuditLogAdmin(DE.Encrypt("Delete Section"), int.Parse(Session["admin_id"].ToString()), DE.Encrypt("Deleted by "
                       + Session["first_name"].ToString() + " " + Session["middle_name"].ToString() + " " + Session["last_name"].ToString()));
                }
            }
        }
        else if (e.CommandName == "updatesec")
        {

        }
        ViewSection();
    }
    protected void lvSection_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }
    protected void lvSection_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddSection.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}