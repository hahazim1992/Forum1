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
        lbluser.Text = Session["username"].ToString();
        lbluserstatus.Text= Session["userstatus"].ToString();
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "update tblcontent set contentContent='" + txtupdatecontent.Text + "' where contentName='" + DropDownList2.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script language='javascript'>window.alert('Update succeeded!');window.location ='Home.aspx';</script >");
    }

    protected void btnbeginupdate_Click(object sender, EventArgs e)
    {
        string title = DropDownList2.Text;
        SqlCommand cmd2 = new SqlCommand("select contentName, contentContent, contentImage from tblcontent where contentName='"+title+"'", con);
        var reader = cmd2.ExecuteReader();
        while (reader.Read())
        {
            Session["contentcontent"] = reader[1];
            Session["contentimage"] = reader[2];
            break;
        }
        txtupdatecontent.Text = Session["contentcontent"].ToString();
        Imagecontent.Visible = true;
        Imagecontent.ImageUrl = Session["contentimage"].ToString();
    }

    protected void btndel_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "delete from tblcontent where contentName='" + DropDownList2.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script language='javascript'>window.alert('Your content has been deleted, GOODBYE!');window.location ='Home.aspx';</script >");
    }
}