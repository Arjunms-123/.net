using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class sessioneg2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl2.Text="Welcome "+ Session["uname"].ToString();
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("sessioneg3.aspx");
        }
    }
}