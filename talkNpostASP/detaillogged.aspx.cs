using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;

public partial class detaillogged : System.Web.UI.Page
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
        lbluser.Text= Session["username"].ToString();
        lbluserstatus.Text = Session["userstatus"].ToString();
        txtusername.Text= Session["username"].ToString();
        Label9.Text = Request.QueryString["contentName"].ToString();
        txtcontentname.Text = Request.QueryString["contentName"].ToString();
    }

    protected void btncomment_Click(object sender, EventArgs e)
    {
        string username = txtusername.Text.Trim();
        string contentname = txtcontentname.Text.Trim();
        string comment = txtcomment.Text.Trim();
        if(txtcomment.Text!="")
        { 
            string strSql1 = "Insert into tblcomment ([commentComment], [contentName], [userName], [commentDate]) ";
            strSql1 += "Values('" + comment + "','" + contentname + "','" + username + "', GETDATE())";
            cmd.CommandText = strSql1;
            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'>window.alert('Comment Posted!');window.location ='detaillogged.aspx?contentName="+contentname+"';</script >");
        }
        else
        {
            lblcommentifempty.Visible = true;
            lblcommentifempty.Text = "Cannot be blank! Please leave a comment!";
        }
    }

    protected void btnrate_click(object sender, EventArgs e)
    {
        string contentname = txtcontentname.Text.Trim();
        if (txtrate.Text!="")
        { 
            cmd.CommandText = "update tblcontent set contentScore='" + int.Parse(txtrate.Text) + "' where contentName='" + Label9.Text + "'";
            cmd.ExecuteNonQuery();
            lblratesuccessorfail.Visible = true;
            Response.Write("<script language='javascript'>window.alert('Rating Submitted! Thank You!');window.location ='detaillogged.aspx?contentName=" + contentname + "';</script >");
        }
        else
        {
            lblratesuccessorfail.Visible = true;
            lblratesuccessorfail.Text = "Cannot be blank! Please leave a rate";
        }
    }
}