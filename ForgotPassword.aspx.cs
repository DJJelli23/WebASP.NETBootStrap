﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btPassRec_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("select * from Users where Email = '" + tbEmailId.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                string myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cm1 = new SqlCommand("Insert into ForgotPassRequests values('" + myGUID + "', '" + Uid + "', getdate())", con);
                cm1.ExecuteNonQuery();

                // Send Mail
                string toEmailAddress = dt.Rows[0][3].ToString();
                string userName = dt.Rows[0][1].ToString();
                string emailBody = "Hi" + userName + ", <br /><br /> Click the link below to reset your password <br />";
                MailMessage PassRecMail = new MailMessage("youremail@gmail.com", toEmailAddress);


                lblPassRec.Text = "Check your email to reset your password.";
                lblPassRec.ForeColor = Color.Green;
            }
            else
            {
                lblPassRec.Text = "Oops. This email id does not exist in our database.";
                lblPassRec.ForeColor = Color.Red;
            }
        }
    }
}