using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class admin_replyquery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                LoadData(id);
                this.id.Value = id.ToString();
            }
        }
    }
    protected void LoadData(int id)
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        string query = "select * from studquery where id=@id";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", id);

            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                Query.Text = reader["query"].ToString();
                Reply.Text = reader["reply"].ToString();
            }

            reader.Close();
        }
    }
    protected void send_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(this.id.Value);
        string reply = Reply.Text.Trim();

        string connectionString = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        string query = "update studquery set reply=@reply where id=@id";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@reply", reply);
            command.Parameters.AddWithValue("@id", id);

            connection.Open();

            command.ExecuteNonQuery();
        }
        Response.Write("<script> alert('Reply Sent Successfully')</script>");
        Response.Write("<script>window.location='studquery.aspx'</script>");
    }
}
