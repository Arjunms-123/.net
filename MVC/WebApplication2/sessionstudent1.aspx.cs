using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class sessionstudent1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {

            double mark1 = int.Parse(txt2.Text);
            double mark2 = int.Parse(txt3.Text);
            double mark3 = int.Parse(txt4.Text);
            double mark4 = int.Parse(txt5.Text);

            double sum=mark1+ mark2+mark3+mark4;
            double avg = sum / 4;

            Session["uname"] = txt1.Text;
            Session["maths"] = txt2.Text;
            Session["hindi"] = txt3.Text;
            Session["chemistry"] = txt4.Text;
            Session["physics"] = txt5.Text;
            Session["sum"] = sum;
            Session["avg"] = avg;
            Response.Redirect("sessionstudent2.aspx");

            
        }
    }
}