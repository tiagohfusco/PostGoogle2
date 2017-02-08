using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack){
            using (SqlConnection con = new SqlConnection("Server=AME0556356W10-1\\ALUNO01;Database=db_google;Trusted_Connection=Yes;"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM tb_Posts", con))
                {
                    con.Open();
                    dtlPosts.DataSource = cmd.ExecuteReader();
                    dtlPosts.DataBind();
                }
            }
        }
    }
}