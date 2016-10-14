using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    /*Responsive Website - Part 9 - Secure Login-Session, Remember Password-Cookie*/
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USERNAME"] != null)
        {
            lblSuccess.Text = "Login Success, Welcome " + Session["USERNAME"].ToString()+".";
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}