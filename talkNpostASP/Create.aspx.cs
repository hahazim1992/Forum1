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
        lbluser.Text= Session["username"].ToString();
        txtstatus.Text = Session["userstatus"].ToString();
        lbluserstatus.Text = Session["userstatus"].ToString();
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        string contentName = txtname.Text.Trim();
        string content = txtContent.Text;
        string userName = lbluser.Text.Trim();
        string categoryName = drpCategory.Text.Trim();
        string filename = "~\\images\\";
        string filename2;
        int rate = 0;
        if (uploadpicture.HasFile)
        {
            if (uploadpicture.PostedFile.ContentType == "image/jpeg")
            {
                filename += Path.GetFileName(uploadpicture.FileName);
                filename2 = Path.GetFileName(uploadpicture.FileName);
                uploadpicture.SaveAs(Server.MapPath("images\\" + uploadpicture.FileName));
                string strSql1 = "Insert into tblcontent ([contentName], [contentContent], [userName], [categoryName], [contentStatus], [contentImage], [contentScore], [contentDate]) ";
                strSql1 += "Values('" + contentName + "','" + content + "','" + userName + "','" + categoryName + "','" + lbluserstatus.Text + "','" + filename + "','" + rate + "', GETDATE())";
                cmd.CommandText = strSql1;
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>window.alert('Content Created!');window.location ='Home.aspx';</script >");
            }
            else
            {
                lbldenied.Visible = true;
                lbldenied.Text = "Must be .jpg file!";
            }
        }
        else
        {
            lbldenied.Visible = true;
            lbldenied.Text = "cannot be empty! must choose a .jpg picture!";
        }
        
    }
}