using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class student2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            double mark1 = int.Parse(txt2.Text);
            double mark2 = int.Parse(txt3.Text);
            double mark3 = int.Parse(txt4.Text);
            double mark4 = int.Parse(txt5.Text);

            double s = mark1 + mark2 + mark3 + mark4;
            Session["sum"] = s;



            Response.Redirect("student3.aspx");
        }
    }
}