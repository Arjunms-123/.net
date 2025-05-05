using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class multiplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(Txt1.Text);
            int mul = 0;
            string s = "";
            for (int i = 1; i <= 10; i++)
            {
                mul = n1 * i;
                s += i + "*" + n1 + "=" + mul + "<br>";
            }
            Lbl1.Text = "The multiplication table of\t" + n1 + "\tis:<br>" + s.ToString();

        }

    }
}