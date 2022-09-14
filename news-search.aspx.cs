using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class news_search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sansar"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["sch"]!="" && Session["sch"]!=null){
            res.Text="Searched News Are:-";
            fg();
        }
        else{

        }


    }
    public void fg()
    {
        try
        {
            string srch = Session["sch"].ToString();
            using (SqlDataAdapter sad = new SqlDataAdapter("select * from news where title like '%" + srch + "%'", con))
            {
                DataTable dt = new DataTable();
                sad.Fill(dt);
                gv1.DataSource = dt;
                gv1.DataBind();
            }
        }
        catch (Exception ex)
        {
            
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "readmore")
            {

            }
        }
        catch (Exception ex)
        {
            
        }
    }
}