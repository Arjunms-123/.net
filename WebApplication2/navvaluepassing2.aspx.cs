using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class navvaluepassing2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["n1"];
            string password = Request.QueryString["n2"];

            lbl3.Text = "Welcome\t\t" + name + "<br> Your password is\t\t" + password;
        }
    }
}