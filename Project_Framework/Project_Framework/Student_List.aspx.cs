using System;
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
    public partial class Student_List : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from Student_Marks Where Teacher_Id="+Session["id"], con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }


        protected void MarksEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            refreshdata();
        }

        protected void MarksUpdating(object sender, GridViewUpdateEventArgs e)
        {

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);

            TextBox txtOS = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox txtAA = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox txtWDDN = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox txtMFP = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            TextBox txtAT = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
            int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["id"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Student_Marks set OS='" + txtOS.Text + "',AA='" + txtAA.Text + "',WDDN='" + txtWDDN.Text + "',MFP='" + txtMFP.Text + "',AT='" + txtAT.Text + "' where Id='" + id + "' ", con);
            //cmd.CommandType = CommandType.StoredProcedure;

            //cmd.Parameters.AddWithValue("name", txtname.Text);
            //cmd.Parameters.AddWithValue("city", txtcity.Text);
            //cmd.Parameters.AddWithValue("id", id);

            int i = cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            refreshdata();
        }

        protected void CancelUpdate(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;
            refreshdata();
        }

        protected void AddMarks(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add"))
            {

                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString);
                con.Open();
                TextBox id = (TextBox)GridView1.FooterRow.FindControl("addid");
                TextBox student_id = (TextBox)GridView1.FooterRow.FindControl("addstudent_id");
                TextBox teacher_id = (TextBox)GridView1.FooterRow.FindControl("addteacher_id");
                TextBox OS = (TextBox)GridView1.FooterRow.FindControl("addOS");
                TextBox AA = (TextBox)GridView1.FooterRow.FindControl("addAA");
                TextBox WDDN = (TextBox)GridView1.FooterRow.FindControl("addWDDN");
                TextBox MFP = (TextBox)GridView1.FooterRow.FindControl("addMFP");
                //TextBox dob= (TextBox)GridView1.FooterRow.FindControl("adddob");
                TextBox AT = (TextBox)GridView1.FooterRow.FindControl("addAT");
                SqlCommand cmd = new SqlCommand("insert into Student_Marks(id,Student_Id,Teacher_Id,OS,AA,WDDN,MFP,AT) values('" + id.Text + "','"+student_id.Text + "','" + teacher_id.Text + "','" + OS.Text + "','" + AA.Text + "','" + WDDN.Text + "','" + MFP.Text + "','" + AT.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                refreshdata();

            }
        }
    }
}