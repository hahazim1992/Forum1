using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
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
        lblcategory.Text = Request.QueryString["categoryName"];
        lbluserstatus.Text= Session["userstatus"].ToString();
        lbluser.Text= Session["username"].ToString();
        if (lblcategory.Text != "" && lbluserstatus.Text=="premium")
        {
            categoryPremium(); 
        }

        if (lblcategory.Text != "" && lbluserstatus.Text=="standard")
        {
            categoryStandard();
        }

        if (lblcategory.Text == "" && lbluserstatus.Text=="standard")
        {
            standardUser();
            lblcategory.Text = "Browse all";
        }
        if (lblcategory.Text == "" && lbluserstatus.Text == "premium")
        {
            premiumnadstandardUser();
            lblcategory.Text = "Browse all";
        }
    }
    private void categoryPremium()
    {
        GridViewcategorypremium.Visible = true;
        GridViewcategorystandard.Visible = false;
        GridViewpremiumandstandard.Visible = false;
        GridViewstandard.Visible = false;
    }
    private void categoryStandard()
    {
        GridViewcategorypremium.Visible = false;
        GridViewcategorystandard.Visible = true;
        GridViewpremiumandstandard.Visible = false;
        GridViewstandard.Visible = false;
    }
    private void premiumnadstandardUser()
    {
        GridViewcategorypremium.Visible = false;
        GridViewcategorystandard.Visible = false;
        GridViewpremiumandstandard.Visible = true;
        GridViewstandard.Visible = false;
    }

    private void standardUser()
    {
        GridViewcategorypremium.Visible = false;
        GridViewcategorystandard.Visible = false;
        GridViewpremiumandstandard.Visible = false;
        GridViewstandard.Visible = true;
    }

}