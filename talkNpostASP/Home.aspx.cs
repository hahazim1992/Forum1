using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluser.Text = Session["username"].ToString();
        lbluserstatus.Text = Session["userstatus"].ToString();
        if(lbluserstatus.Text=="premium")
        {
            premiumUser();
        }
        if(lbluserstatus.Text == "standard")
        {
            standardUser();
        }
    }

    private void premiumUser()
    {
        GridViewmostpremium.Visible = true;
        GridViewrecentpremium.Visible = true;
        GridViewmoststandard.Visible = false;
        GridViewrecentstandard.Visible = false;
    }
    private void standardUser()
    {
        GridViewmostpremium.Visible = false;
        GridViewrecentpremium.Visible = false;
        GridViewmoststandard.Visible = true;
        GridViewrecentstandard.Visible = true;
    }

}