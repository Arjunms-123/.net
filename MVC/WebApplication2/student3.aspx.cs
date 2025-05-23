using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class student3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            double mark5 = int.Parse(txt1.Text);
            double mark6 = int.Parse(txt2.Text);
            double mark7 = int.Parse(txt3.Text);
            double mark8 = int.Parse(txt4.Text);
            double inttot=mark5+mark6+mark7+mark8;

            double sum = (double)Session["sum"];
            double tom = inttot + sum;

            Session["tom"]=tom;


            Response.Redirect("student4.aspx");
        }
    }
}