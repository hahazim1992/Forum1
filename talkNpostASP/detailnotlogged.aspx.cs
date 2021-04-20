using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class detailnotlogged : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Text = Request.QueryString["contentName"].ToString();
    }

}