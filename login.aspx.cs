using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sansar"].ConnectionString);
    protected void Page_load(object sender, EventArgs e)
    {
        //if(!IsPostBack)
          //  display_item();
    }
    protected void admin_Click(object sender, EventArgs e)
    {

        try
        {
            string editorid = Convert.ToString(txt1.Text);
            string password = Convert.ToString(txt2.Text);
            con.Open();
            string qry = "select * from loginTable where editorID='" + editorid + "'and password='" + password + "'";
            SqlCommand cmd=new SqlCommand(qry,con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["user"] = editorid;
                Response.Redirect("Account/admin.aspx");

            }
            else
            {
                txt1.Text = "";
                txt2.Text = "";
                con.Close();
                Label1.Text = "Invalid Username/Password";
                return;
            }
            con.Close();
           
        }
        catch (Exception ex)
        {

            throw;
        }
    }
    static void display_item()
    {

    }
}