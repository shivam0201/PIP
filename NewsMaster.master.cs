using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewsMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Unnamed_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Unnamed_Click1(object sender, ImageClickEventArgs e)
    {
        try 
        {
            if (srch.Text.ToString().Trim() != "")
            {
                Session["sch"]=srch.Text.ToString().Trim();
                Response.Redirect("../news-search.aspx");
            }
            else{
                return;
            }
        }
        catch(Exception ex)
        {

        }
    }
}
