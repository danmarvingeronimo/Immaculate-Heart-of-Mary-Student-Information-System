using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Parent_Parent : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Student_ID"] != null && Session["UserType_ID"].ToString() == "6")
            lblogin.Text = "Welcome,  " + Session["First_Name"].ToString() + " " + Session["Last_Name"].ToString();
        else
            Response.Redirect("~/PLogin.aspx");

    }
}
