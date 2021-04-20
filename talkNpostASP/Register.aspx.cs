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
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        string realName = txtname.Text.Trim();
        string userName = txtusername.Text.Trim();
        string email = txtemail.Text.Trim();
        string password = txtpassword.Text.Trim();
        string userstatus = DropDownList1.Text.Trim();
        string strSql = "Insert into tbluserinfo ([userRealName], [userName], [userEmail], [userPassword], [userStatus]) ";
        strSql += "Values('" + realName + "','" + userName + "','" + email + "','" + password + "','" + userstatus + "')";
        cmd.CommandText = strSql;
        try
        {
            cmd.ExecuteNonQuery();
            Session["username"] = userName;
            Session["password"] = password;
            Session["userstatus"] = userstatus;
            Response.Write("<script language='javascript'>window.alert('Register successful! WELCOME!');window.location ='Home.aspx';</script >");
        }
        catch
        {
            Literal txtMsg = new Literal();
            txtMsg.Text = "<script>alert('Registration Failed!')</script>";
            Page.Controls.Add(txtMsg);
        }
        finally
        {
            con.Close();
        }
    }

    protected void btnrCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }


}