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
        if (!IsPostBack)
        {
            ViewSection();
        }

        if (Session["emptysub"] != null)
        {
            success.Visible = true;
            Session["emptysub"] = null;
        }

        else if (Session["addsub"] != null)
        {
            add.Visible = true;
            Session["addsub"] = null;
        }

    }
    void ViewSection()
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String Send = @"Select Section_ID, Section_Name, Year_level from SECTION WHERE Section_ID!=21";

            using (SqlCommand help = new SqlCommand(Send, con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(help))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Section");

                    lvSection.DataSource = ds;
                    lvSection.DataBind();
                }
            }
        }
    }
}