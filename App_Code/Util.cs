using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Util
/// </summary>
public class Util
{
    public Util()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string GetConnection()
    {
        return ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    }
    //Nathaniel Collins S. Ortiz
    public void AuditLogAdmin(string Title, int AdminID, string Description)
    {
        SqlConnection con = new SqlConnection(GetConnection());
        string SQL = @"INSERT INTO AUDIT_LOG_ADMIN VALUES(@AdminID,@TimeStamp,@Title,@Description)";
        con.Open();

        using (SqlCommand com = new SqlCommand(SQL, con))
        {
            com.Parameters.AddWithValue("@AdminID", AdminID);
            com.Parameters.AddWithValue("@TimeStamp", DateTime.Now);
            com.Parameters.AddWithValue("@Title", Title);
            com.Parameters.AddWithValue("@Description", Description);
            com.ExecuteNonQuery();


        }
        con.Close();
    }
    //Nathaniel Collins S. Ortiz
    public void AuditLogTeacher(string Title, int TeacherID, string Description)
    {
        SqlConnection con = new SqlConnection(GetConnection());
        string SQL = @"INSERT INTO AUDIT_LOG_TEACHER VALUES(@TeacherID,@TimeStamp,@Title,@Description)";
        con.Open();

        using (SqlCommand com = new SqlCommand(SQL, con))
        {
            com.Parameters.AddWithValue("@TeacherID", TeacherID);
            com.Parameters.AddWithValue("@TimeStamp", DateTime.Now);
            com.Parameters.AddWithValue("@Title", Title);
            com.Parameters.AddWithValue("@Description", Description);
            com.ExecuteNonQuery();


        }
        con.Close();
    }
    //Nathaniel Collins S. Ortiz
    public void AuditLogStudent(string Title, int StudentID, string Description)
    {
        SqlConnection con = new SqlConnection(GetConnection());
        string SQL = @"INSERT INTO AUDIT_LOG_STUDENT VALUES(@StudentID,@TimeStamp,@Title,@Description)";
        con.Open();

        using (SqlCommand com = new SqlCommand(SQL, con))
        {
            com.Parameters.AddWithValue("@StudentID", StudentID);
            com.Parameters.AddWithValue("@TimeStamp", DateTime.Now);
            com.Parameters.AddWithValue("@Title", Title);
            com.Parameters.AddWithValue("@Description", Description);
            com.ExecuteNonQuery();


        }
        con.Close();
    }

}