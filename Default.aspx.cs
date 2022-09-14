using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sansar"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        fg();
    }
    public void fg()
    {
        try
        {
            using (SqlDataAdapter sad = new SqlDataAdapter("select * from news", con))
            {
                DataTable dt = new DataTable();
                sad.Fill(dt);
                headlines.DataSource = dt;
                headlines.DataBind();
            }
        }
        catch (Exception ex)
        {

        }
    }
}