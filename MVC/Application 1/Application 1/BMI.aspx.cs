using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class BMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            double n1 = double.Parse(Txt1.Text);
            double n2 = double.Parse(Txt2.Text);
            n1 = n1 / 100;
            double bmi = n2 / (n1 * n1);
            Txt3.Text = bmi.ToString();
            

        }
    }
}