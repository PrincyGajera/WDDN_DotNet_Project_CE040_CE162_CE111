using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace Project_Framework
{
    public partial class AddNewStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                refreshdata();
            }
        }
        public void refreshdata()
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Student_Details Where Teacher_Id="+Session["id"], con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }
        protected void AddStudent(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add"))
            {

                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
                con.Open();

                TextBox fname = (TextBox)GridView1.FooterRow.FindControl("addfirstname");
                TextBox lname = (TextBox)GridView1.FooterRow.FindControl("addlastname");
                TextBox email = (TextBox)GridView1.FooterRow.FindControl("addemail");
                TextBox mobile = (TextBox)GridView1.FooterRow.FindControl("addmobile");
                TextBox teacherId = (TextBox)GridView1.FooterRow.FindControl("addteacherid");
                TextBox branch = (TextBox)GridView1.FooterRow.FindControl("addbranch");
                //TextBox dob= (TextBox)GridView1.FooterRow.FindControl("adddob");
                TextBox password = (TextBox)GridView1.FooterRow.FindControl("addpassword");
                SqlCommand cmd = new SqlCommand("insert into Student_Details(First_name,Last_name,Email,Mobile_no,Teacher_Id,Branch,Password) values('" + fname.Text + "','" + lname.Text + "','" + email.Text + "','" + mobile.Text + "','" + teacherId.Text + "','" + branch.Text + "','" + password.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                refreshdata();

            }
        }
    }
}