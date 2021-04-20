using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    static string constr = "Data source=LAPTOP-HP6LE0S6\\SQLEXPRESS;Initial Catalog=talknpost1; Integrated Security=True;";
    SqlConnection con = new SqlConnection(constr); //connect database
    SqlCommand cmd = new SqlCommand(); //defining the command
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = con; //select a database to select table
        con.Open();
        cmd.CommandType = CommandType.Text; //to define it is a string
        cmd.CommandTimeout = 15;
    }

    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("searchlogged.aspx? &keyword=" + txtsearch.Text.Trim());
    }

    protected void btnbrowse_Click(object sender, EventArgs e)
    {
        Response.Redirect("Browselogged.aspx");
    }

    protected void btnprofile_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile.aspx");
    }

    protected void btncreate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Create.aspx");
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Write("<script language='javascript'>window.alert('You have log out, GOODBYE!');window.location ='Default.aspx';</script >");
    }

    protected void btnupdatecontent_Click(object sender, EventArgs e)
    {
        Response.Redirect("Editcontent.aspx");
    }
}
