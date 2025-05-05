using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class student4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1.Text = "Welcome " + Session["uname"].ToString() + "<br>";
            lbl2.Text = "You scored\t\t" + Session["tom"].ToString();

        }
    }
}