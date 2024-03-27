using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class admin_messages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void send_Click(object sender, EventArgs e)
    {
        if (subject.Text.Trim() != "" && message.Text.Trim() != "" && date.Text.Trim() != "")
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["cn"].ToString();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO messages(subject, message, date) VALUES (@subject, @message, @date)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@subject", subject.Text.Trim());
                    command.Parameters.AddWithValue("@message", message.Text.Trim());
                    command.Parameters.AddWithValue("@date", date.Text.Trim());

                    command.ExecuteNonQuery();

                    Response.Write("<script>alert('Messsage Sent Successfully...')</script>");
                }
            }

            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            Response.Write("<script>alert('Please fill in all fields')</script>");
        }
    }
}