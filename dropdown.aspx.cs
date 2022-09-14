using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dropdown : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string course = "";
        string branch = "";
        string fd = "";
        if (Drd1.SelectedIndex > 0)
        {
            course = Drd1.SelectedItem.ToString();
            lbl1.Text = course;
        }
        else
        {
            lbl1.Text = "Enter Choice";
            
        }
        if (Drd2.SelectedIndex > 0)
        {
            branch = Drd2.SelectedItem.ToString() ;
            lbl2.Text = branch;
        }
        else
        {
            lbl2.Text = "Enter Choice";
        }
        if (Drd3.SelectedIndex > 0)
        {
            fd = Drd3.SelectedItem.ToString();
            lbl3.Text = fd;
        }
        else
        {
            lbl3.Text = "Enter Choice";
        }
    }
}