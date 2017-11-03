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

    public int Yearlevel()
    {
        int Yearlevel = 0;
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            string Takanashi = @"SELECT Year_level FROM STUDENT_MAIN WHERE Student_ID=@SID";
            Rikka.Open();
            using (SqlCommand WickedEye = new SqlCommand(Takanashi, Rikka))
            {
                WickedEye.Parameters.AddWithValue("@SID", Session["Student_ID"].ToString());
                using (SqlDataReader dr = WickedEye.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Yearlevel = int.Parse(dr["Year_level"].ToString());
                        }
                    }

                }
            }

        }

        return Yearlevel;
    }


    void ViewSubject()
    {
        int yearlvl = Yearlevel();

        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"Select Subject_ID, Subject_Name, Subject_Desc from SUBJECT_MAIN WHERE 
                                 Year_level=@YL";
                                 

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                Chuu2Koi.Parameters.AddWithValue("@YL", yearlvl);

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
