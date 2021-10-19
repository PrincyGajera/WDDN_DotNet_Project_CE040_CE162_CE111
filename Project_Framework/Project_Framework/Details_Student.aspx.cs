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
    public partial class Details_Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindDetails();
            }
        }
        private void BindDetails()
        {
           try
            {
                using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project"].ConnectionString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM Student_Details Where Id=" + Session["id"]))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            DataSet ds = new DataSet();
                            sda.Fill(ds);
                           
                            DetailsView1.DataSource = ds;
                            DetailsView1.DataBind();
                        }
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Not Found");
            }
        }
    }
}