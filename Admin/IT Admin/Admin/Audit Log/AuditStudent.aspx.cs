using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_IT_Admin_Admin_Audit_Log_AuditAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetAuditStudent();
        }

    }
    void GetAuditStudent()
    {
         Cryptic cs = new Cryptic();
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string Audit = @"Select Audit_ID,Time_Stamp,Title,Description FROM AUDIT_LOG_STUDENT";
            using (SqlCommand com = new SqlCommand(Audit, con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(com))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "AuditStudent");
                    lvAudit.DataSource = ds;
                    lvAudit.DataBind();
                }
            }
        }
    }

    protected void lvAudit_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            Cryptic cs = new Cryptic();
            Label Title = (Label)e.Item.FindControl("Title");
            Label Desc = (Label)e.Item.FindControl("Description");
            String dcTitle = cs.Decrypt(Title.Text);
            String dcDesc = cs.Decrypt(Desc.Text);
            Title.Text = dcTitle;
            Desc.Text = dcDesc;
        }
    }

    protected void lvAudit_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }

    protected void lvAudit_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
}