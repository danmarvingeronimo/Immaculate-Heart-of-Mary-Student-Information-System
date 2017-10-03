using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Subject_ViewSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewSubject();
        }
    }

    void ViewSubject()
    {
        using (SqlConnection help = new SqlConnection(Util.GetConnection()))
        {
            help.Open();
            string send = @"Select * from SUBJECT_MAIN";

            using (SqlCommand please = new SqlCommand(send, help))
            {
                using (SqlDataAdapter iam = new SqlDataAdapter(please))
                {
                    DataSet dyn = new DataSet();
                    iam.Fill(dyn, "Subject");
                    lvSubject.DataSource = dyn;
                    lvSubject.DataBind();
                }
            }
        }
    }
    protected void lvSubject_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Literal ltSubjectID = (Literal)e.Item.FindControl("ltSubjectID");

        if (e.CommandName == "delsub")
        {
            using (SqlConnection larson = new SqlConnection(Util.GetConnection()))
            {
                larson.Open();
                string steve = @"DELETE FROM SUBJECT_MAIN WHERE Subject_ID=@SubID";
                using (SqlCommand raw = new SqlCommand(steve, larson))
                {
                    raw.Parameters.AddWithValue("@SubID", ltSubjectID.Text);
                    raw.ExecuteNonQuery();
                }
            }

        }
        else if (e.CommandName == "updatesub")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string sql = @"UPDATE SUBJECT_MAIN SET Subject_Name=@SN,Subject_Desc=@SD,Identity_Code=@IC, UserID=@UID WHERE Subject_ID=SID";
                using (SqlCommand com = new SqlCommand(sql, con))
                {

                }
            }

        }
        ViewSubject();

        //protected void lvSubject_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        //{

        //}
        //protected void lvSubject_ItemDataBound(object sender, ListViewItemEventArgs e)
        //{

        //}
    }
}
