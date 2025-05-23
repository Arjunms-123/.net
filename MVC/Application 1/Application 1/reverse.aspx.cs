using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class reverse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(Txt1.Text);
            int s=0, dig;
            while (n1 > 0)
            {
                dig = n1 % 10;
                s = (s * 10) + dig;
                n1 /= 10;

            }
            txt2.Text = s.ToString();
        }
        

    }
}