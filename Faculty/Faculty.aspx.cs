using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//Nathaniel Collins S. Ortiz

public partial class Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetFaculty();
        }
    }

     void GetFaculty()
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                String SQL = @"Select Teacher_ID, Teacher_PW, Teacher_FirstName,Teacher_MiddleName, Teacher_LastName, Time_Stamp, User_ID from TEACHER_MAIN";

                using (SqlCommand cmd = new SqlCommand(SQL,con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataSet ds = new DataSet();
                        da.Fill(ds, "Faculty");

                        lvFaculty.DataSource = ds;
                        lvFaculty.DataBind();
                    }
                }
            }
        }
     protected void lvFaculty_ItemCommand(object sender, ListViewCommandEventArgs e)
     {

     }
     protected void lvFaculty_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
     {
         dpFaculty.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
         GetFaculty();
     }
     protected void lvFaculty_ItemDataBound(object sender, ListViewItemEventArgs e)
     {
         dpFaculty.Visible = dpFaculty.TotalRowCount < dpFaculty.PageSize;
     }
}