﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
namespace Project_Framework
{
    public partial class Login_Student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            try
            {
                string sqlquery = "Select * from Student_Details where Email='" + txtusername.Text + "' and Password='" + txtpassword.Text + "'";
                SqlCommand cmd = new SqlCommand(sqlquery);
                cmd.Connection = con;
                con.Open();
                //SqlDataReader dr = cmd.ExecuteReader();
                SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
                da.Fill(dt);
                int count = dt.Rows.Count;
                if (count > 0)
                {
                    dr = dt.Rows[0];
                    Session["id"] = Convert.ToString(dr[0]);

                    Response.Redirect("Details_Student.aspx");
                }
                else
                {
                    Console.Write("Wrong Username or Password");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }
        }
    }
}