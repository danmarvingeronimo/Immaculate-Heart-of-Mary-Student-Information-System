using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Accounting_Accounting : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] != null && Session["UserType_ID"].ToString() == "3")
            lblogin.Text = "Welcome,  " + Session["first_name"].ToString() + " " + Session["last_name"].ToString();
        else
            Response.Redirect("~/Login.aspx"); 
      
    }

}
