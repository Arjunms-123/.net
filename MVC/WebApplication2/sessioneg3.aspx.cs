using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class sessioneg3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt3.Text = Session["uname"].ToString();
            txt4.Text=Session["pword"].ToString();
        }

        protected void txt3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}