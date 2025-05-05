using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class sessionstudent2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1.Text = "Welcome " + Session["uname"].ToString()+"<br>";
            lbl2.Text= "You scored\t" + Session["maths"].ToString()+"\tin Maths<br>";
            lbl3.Text = "You scored\t" + Session["hindi"].ToString() + "\tin Hindi<br>";
            lbl4.Text = "You scored\t" + Session["chemistry"].ToString() + "\tin Chemistry<br>";
            lbl5.Text = "You scored\t" + Session["physics"].ToString() + "\tin Physics<br><br>";
            lbl6.Text = "Your total mark is:\t" + Session["sum"].ToString();
            lbl7.Text = "Your average is:\t" + Session["avg"].ToString();


        }
    }
}