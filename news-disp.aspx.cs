using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class news_disp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sansar"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"].ToString();
            fg(id);
        }
    }
    public void fg(string id)
    {
        try
        {
            using (SqlDataAdapter sad = new SqlDataAdapter("select * from news where Id='"+ id +"'", con))
            {
                DataTable dt = new DataTable();
                sad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    lbltitle.Text = dt.Rows[0]["title"].ToString();
                    lbldesc.Text = dt.Rows[0]["description"].ToString();
                    lbldate.Text = dt.Rows[0]["date"].ToString();


                    string imageurl="data:image/jpg;base64,"+ Convert.ToBase64String((byte[])dt.Rows[0]["image"]);
                    piImage.ImageUrl = imageurl;
                    ytvideo.Src = dt.Rows[0]["ytlink"].ToString();
                    
                }
                else
                {
                    lblalert.Text = "Data not found";
                }
            }
        }
        catch (Exception ex)
        {
            
        }
    }
}