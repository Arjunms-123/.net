using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class dropdownlist2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            ddl1.Items.Add(txt1.Text);
            txt1.Text = "";
        }

        protected void btn2_Click1(object sender, EventArgs e)
        {
            txt2.Text =ddl2.SelectedItem.Text;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt3.Text = ddl3.SelectedItem.Text;
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            if (ddl4.SelectedItem != null)
            {
                ddl4.Items.Remove(ddl4.SelectedItem);
            }
        }
    }
}