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
        Response.Redirect("Default.aspx");
    }

    protected void btnbrowseall_Click(object sender, EventArgs e)
    {
        Response.Redirect("Browse.aspx");
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (check())
        {
            Session["username"] = txtusername.Text;
            Session["password"] = txtpassword.Text;
            Response.Redirect("Home.aspx");
        }
        else
        {
            Literal txtMsg = new Literal();
            txtMsg.Text = "<script>alert('Login Failed!')</script>";
            Page.Controls.Add(txtMsg);
        }
    }

    private bool check()
    {
        bool test = false;
        var strSql = "SELECT userName, userPassword, userStatus ";//
        strSql += "from tbluserinfo";
        var cmdlogin = new SqlCommand(strSql, con);
        var reader = cmdlogin.ExecuteReader();
        while (reader.Read())
        {
            if (reader["userName"].ToString() == txtusername.Text && reader["userPassword"].ToString() == txtpassword.Text)
            {
                test = true;
                Session["userstatus"] = reader[2];
                break;
            }
        }
        return test;
    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("searchnotlogged.aspx? &keyword=" + txtsearch.Text.Trim());
    }
}
