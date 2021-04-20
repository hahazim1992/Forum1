using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class searchlogged : System.Web.UI.Page
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
        lbluser.Text = Session["username"].ToString();
        lbluserstatus.Text = Session["userstatus"].ToString();
        lblcategory.Text = Request.QueryString["keyword"];
        if(lbluserstatus.Text=="premium")
        {
            displaypremium();
        }
        if(lbluserstatus.Text == "standard")
        {
            displaystandard();
        }
        
    }
    private void displaypremium()
    {
        string strsql = "select contentName, categoryName, userName, contentImage, contentDate, contentImage, contentScore, contentStatus ";
        strsql += "from tblcontent ";
        strsql += "where userName like '%" + lblcategory.Text + "%'";
        strsql += "or contentName like '%" + lblcategory.Text + "%'";
        strsql += "or categoryName like '%" + lblcategory.Text + "%'";//usual SQL command
        strsql += "or contentScore like '%" + lblcategory.Text + "%'";
        SqlDataAdapter da = new SqlDataAdapter(strsql, con); //read data based on command 
        DataSet ds = new DataSet(); //store read records 
        da.Fill(ds, "usersearch"); //"dept" is new name for the current dataset
        GridView4.DataSource = ds.Tables["usersearch"]; //give values in "dept" onto gridview
        GridView4.DataBind();
    }
    private void displaystandard()
    {
        string strsql = "select contentName, categoryName, userName, contentImage, contentDate, contentImage, contentScore, contentStatus ";
        strsql += "from tblcontent ";
        strsql += "where (userName like '%" + lblcategory.Text + "%'";
        strsql += "or contentName like '%" + lblcategory.Text + "%'";
        strsql += "or categoryName like '%" + lblcategory.Text + "%'";//usual SQL command
        strsql += "or contentScore like '%" + lblcategory.Text + "%')";
        strsql += "and contentStatus not in ('premium')";
        SqlDataAdapter da = new SqlDataAdapter(strsql, con); //read data based on command 
        DataSet ds = new DataSet(); //store read records 
        da.Fill(ds, "usersearch"); //"dept" is new name for the current dataset
        GridView4.DataSource = ds.Tables["usersearch"]; //give values in "dept" onto gridview
        GridView4.DataBind();
    }
}