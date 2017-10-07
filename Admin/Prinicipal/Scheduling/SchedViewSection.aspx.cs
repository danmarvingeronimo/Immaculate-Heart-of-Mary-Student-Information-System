﻿using System;
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
           String Send = @"Select Section_ID, Section_Name, Year_level from SECTION";

            using (SqlCommand help= new SqlCommand(Send,please))
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
    

}