using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OfficeOpenXml;
using System.IO;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewStudent();
        }
    }
    void ViewStudent()
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            String Send = @"Select Student_ID, FirstName, MiddleName, LastName, Section from STUDENT";

            using (SqlCommand help = new SqlCommand(Send, con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(help))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Student");

                    lvStudent.DataSource = ds;
                    lvStudent.DataBind();
                }
            }
        }
    }

    protected void lvStudent_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Literal ltStudent_ID = (Literal)e.Item.FindControl("ltStudent_ID");

        if (e.CommandName == "delfile")
        {
            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                con.Open();
                string DELETE = @"DELETE FROM STUDENT WHERE Student_ID=@Student_ID";
                using (SqlCommand Nero = new SqlCommand(DELETE, con))
                {
                    Nero.Parameters.AddWithValue("@Student_ID", ltStudent_ID.Text);
                    Nero.ExecuteNonQuery();
                }
            }
        }
        else if (e.CommandName == "updatefile")
        {

        }
        ViewStudent();
    }
    protected void lvStudent_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {

    }
    protected void lvStudent_ItemDataBound(object sender, ListViewItemEventArgs e)
    {

    }
    protected void btnRedirect_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack && Upload.HasFile)
        {
            if (Path.GetExtension(Upload.FileName).Equals(".xlsx"))
            {
                try
                {
                    var excel = new ExcelPackage(Upload.FileContent);
                    var dt = excel.ToDataTable();
                    var table = "STUDENT";
                    using (var conn = new SqlConnection("Server=BYTEJUMPER;Database=ThesisDB;Integrated Security=SSPI"))
                    {
                        var bulkCopy = new SqlBulkCopy(conn);
                        bulkCopy.DestinationTableName = table;
                        conn.Open();
                        var schema = conn.GetSchema("Columns", new[] { null, null, table, null });
                        foreach (DataColumn sourceColumn in dt.Columns)
                        {
                            foreach (DataRow row in schema.Rows)
                            {
                                if (string.Equals(sourceColumn.ColumnName, (string)row["COLUMN_NAME"], StringComparison.OrdinalIgnoreCase))
                                {
                                    bulkCopy.ColumnMappings.Add(sourceColumn.ColumnName, (string)row["COLUMN_NAME"]);
                                    break;
                                }
                            }
                        }
                        bulkCopy.WriteToServer(dt);
                    }
                }
                }
        }
    }
}

