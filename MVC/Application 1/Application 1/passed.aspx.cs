using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class passed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            string n1 = Txtname.Text;
            int n2 = int.Parse(Txtmark.Text);
            if (n2 < 40)
            {
                lblcheck1.Text = "Sorry \t\t" + n1 + "\t\tYou \t\t have \t\t failed";
                lblcheck1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblcheck1.Text = "Congratulations\t\t" + n1 + "\t\tYou\t\t have\t\t passed";
                lblcheck1.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}