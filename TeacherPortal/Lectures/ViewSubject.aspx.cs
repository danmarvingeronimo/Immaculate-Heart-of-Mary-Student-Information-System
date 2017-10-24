using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

//DAN MARVIN GERONIMO

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
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"Select Subject_ID, Subject_Name, Subject_Desc from SUBJECT_MAIN WHERE 
                                 Teacher_ID=@TID";
                                 

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                Chuu2Koi.Parameters.AddWithValue("@TID", Session["Teacher_ID"].ToString());

                using (SqlDataAdapter Nibutani = new SqlDataAdapter(Chuu2Koi))
                {
                    DataSet Kumin = new DataSet();
                    Nibutani.Fill(Kumin, "Subject");
                    lvSubject.DataSource = Kumin;
                    lvSubject.DataBind();
                }
            }
        }
    }

    protected void lvSubject_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
    
    protected void lvSubject_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
    
}
