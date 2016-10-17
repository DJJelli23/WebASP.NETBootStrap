using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Response.Cookies["UNAME"] != null && Response.Cookies["UPWD"] != null)
            {
                UserName.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["value"] = Request.Cookies["UPWD"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select * from Users where Username='"+UserName.Text+"' and Password ='"+Password.Text+"'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = UserName.Text;
                    Response.Cookies["UPWD"].Value = Password.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                }
                /*Part 11*/
                string uType;
                uType = dt.Rows[0][5].ToString().Trim();

                if(uType == "U")
                {
                    Session["USERNAME"] = UserName.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
                if (uType == "A")
                {
                    Session["USERNAME"] = UserName.Text;
                    Response.Redirect("~/AdminHome.aspx");
                }

                Session["USERNAME"] = UserName.Text;
                Response.Redirect("~/UserHome.aspx");
            }
            else
            {
                lblError.Text = "Invalid Username or Password!";
            }
        }
    }
}