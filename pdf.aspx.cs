using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.Configuration;

public partial class admin_pdf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (fileUpload.HasFile)
        {
            string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            if (fileExtension == ".pdf")
            {
                string savePath = Server.MapPath("~/pdf/") + fileName;
                if (File.Exists(savePath))
                {
                    Response.Write("<script>alert('The pdf already exists')</script>");
                }
                else
                {
                    fileUpload.PostedFile.SaveAs(savePath);
                    string connectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
                    string query = "INSERT INTO pdf (course, sem, subject, pdf, path) VALUES (@category, @sem, @subject, @pdf, @path)";
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@category", course.Text);
                            cmd.Parameters.AddWithValue("@sem", sem.Text);
                            cmd.Parameters.AddWithValue("@subject", subject.Text);
                            cmd.Parameters.AddWithValue("@pdf", fileName);
                            cmd.Parameters.AddWithValue("@path", savePath);
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
            }
        }
    }
}