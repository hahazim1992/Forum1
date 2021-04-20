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
        txtusername.Text = Session["username"].ToString();
        txtsecretoldpw.Text = Session["password"].ToString();
        lbluser.Text = Session["username"].ToString();
        lbluserstatus.Text = Session["userstatus"].ToString();
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        if (txtoldpassword.Text == Session["password"].ToString())
        {
            cmd.CommandText = "update tbluserinfo set userPassword='" + txtnewpassword.Text + "' where userName='" + txtusername.Text + "'";
            cmd.ExecuteNonQuery();
            Session["password"] = txtnewpassword.Text;
            con.Close();
            Response.Write("<script language='javascript'>window.alert('Password change succeeded!');window.location ='Home.aspx';</script >");
        }
        else
        {
            Literal txtMsg = new Literal();
            txtMsg.Text = "<script>alert('Password change Failed!')</script>";
            Page.Controls.Add(txtMsg);
        }
    }

    protected void btnDelAcc_Click(object sender, EventArgs e)
    {
        if (txtoldpassword.Text== Session["password"].ToString())
        {
            cmd.CommandText = "delete from tbluserinfo where userName='" + txtusername.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'>window.alert('Your account have been deleted, GOODBYE!');window.location ='Default.aspx';</script >");
        }
        else
        {
            if(txtoldpassword.Text == "")
            {
                lbldenieddelete.Visible = true;
                lbldenieddelete.Text = "Please insert current old password to complete the delete process";
            }
            else
            {
                lbldenieddelete.Visible = true;
                lbldenieddelete.Text = "Old password is wrong, please try again!";
            }    
        }
    }
}