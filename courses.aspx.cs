using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class admin_courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void add_Click(object sender, EventArgs e)
    {
        if (category.Text.Trim() != "" && course.Text.Trim() != "" && fees.Text.Trim() != "" && duration.Text.Trim() != "")
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["cn"].ToString();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO courses (category, course, fees, duration) VALUES (@category, @course, @fees, @duration)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@category", category.Text.Trim());
                    command.Parameters.AddWithValue("@course", course.Text.Trim());
                    command.Parameters.AddWithValue("@fees", fees.Text.Trim());
                    command.Parameters.AddWithValue("@duration", duration.Text.Trim());

                    command.ExecuteNonQuery();
                }
                Response.Write("<script>alert('Course Added Successfully...')</script>");
            }
            
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            Response.Write("<script>alert('Please fill in all fields')</script>");
        }
    }
}