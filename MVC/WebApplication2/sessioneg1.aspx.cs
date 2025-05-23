using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class sessioneg1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Session["uname"] = txt1.Text;
            Session["pword"]=txt2.Text;
            Response.Redirect("sessioneg2.aspx");
        }
    }
}