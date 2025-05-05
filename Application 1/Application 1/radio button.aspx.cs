using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class radio_button : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (rbtmale.Checked)
            {
                lbl1.Text = "You have selected\t" + rbtmale.Text;
            }
            else if (rbtfemale.Checked)
            {
                lbl1.Text = "You have selected\t" + rbtfemale.Text;
            }
            else if (rbtothers.Checked)
            {
                lbl1.Text = "You have selected\t" + rbtothers.Text;
            }
            else
            {
                lbl1.Text = "Select a gender";
            }
        }

        protected void rbtmale_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}