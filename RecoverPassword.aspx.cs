using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

public partial class RecoverPassword : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    string GUIDvalue;
    DataTable dt = new DataTable();
    int Uid;

    protected void Page_Load(object sender, EventArgs e)
    {
        /*<!--Responsive Website - Part 13 - Generating Forgot Password Link with GUID - Send Email-->*/
        /*<!--Responsive Website - Part 14 - Forgot Password - Authenticate Reset Link - Change Password-->*/
        using (SqlConnection con = new SqlConnection(cs))
        {
            GUIDvalue = Request.QueryString["Uid"];
            if (GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPassRequests where id ='" + GUIDvalue + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblMsg.Text = "Your Password Reset Link is Expired or Invalid!";
                    lblMsg.ForeColor = Color.Red;
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        if(!IsPostBack)
        {
            if (dt.Rows.Count != 0)
            {
                tbNewPass.Visible = true;
                tbConfPass.Visible = true;
                lblConfPass.Visible = true;
                lblPassword.Visible = true;
                btRecPass.Visible = true;
            }
            else
            {
                lblMsg.Text = "Your Password Reset Link is Expired or Invalid!";
                lblMsg.ForeColor = Color.Red;
            }
        }
    }

    protected void btRecPass_Click(object sender, EventArgs e)
    {
        if (tbNewPass.Text != "" && tbConfPass.Text != "" && tbNewPass.Text == tbConfPass.Text)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Update Users set Password = '" + tbNewPass.Text + "' where Uid = '" + Uid + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmdDelete = new SqlCommand("Delete from ForgotPassRequests where Uid = '" + Uid + "'", con);
                cmdDelete.ExecuteNonQuery();
                Response.Redirect("~/SignIn.aspx");
            }
        }
    }
}