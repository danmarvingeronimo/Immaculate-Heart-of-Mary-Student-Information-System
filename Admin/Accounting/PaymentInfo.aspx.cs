﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

//DAN MARVIN GERONIMO

public partial class Admin_Admission_PaymentInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ID"] == null)
        {
            Response.Redirect("StudentList.aspx");
        }
        else
        {
            int secid = 0;
            bool validsecid = int.TryParse(Request.QueryString["ID"].ToString(), out secid);

            if (validsecid)
            {
                if (!IsPostBack)
                {
                    GetID(secid);
                    GetPaymentInfo(secid);
                }
            }
            else
            {
                Response.Redirect("StudentList.aspx");
            }
        }
    }
    void GetID(int ID)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT Last_Name + ', ' + First_Name + ' ' + Middle_Name AS FullName FROM STUDENT_MAIN WHERE Student_ID=@SID ";
            con.Open();
            using (SqlCommand com = new SqlCommand(SQL, con))
            {
                com.Parameters.AddWithValue("@SID", ID);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ltSID.Text = dr["FullName"].ToString();
                        }
                    }
                    else
                    {
                        Response.Redirect("StudentList.aspx");
                    }
                }
            }
        }
    }

    void GetPaymentInfo(int ID)
    {
        using (SqlConnection Rikka = new SqlConnection(Dekomori.GetConnection()))
        {
            Rikka.Open();
            string Takanashi = @"SELECT Paymentinfo_ID, Payment_Status, DateOfPayment, SY, Quarter FROM PAYMENTS_INFO WHERE Student_ID=@SID ORDER BY DateOfPayment ASC";

            using (SqlCommand Chuu2Koi = new SqlCommand(Takanashi, Rikka))
            {
                Chuu2Koi.Parameters.AddWithValue("@SID", ID);

                using (SqlDataAdapter Nibutani = new SqlDataAdapter(Chuu2Koi))
                {
                    DataSet Kumin = new DataSet();
                    Nibutani.Fill(Kumin, "PAYMENTS_INFO");

                    lvStudents.DataSource = Kumin;
                    lvStudents.DataBind();


                }
            }
        }
    }
}