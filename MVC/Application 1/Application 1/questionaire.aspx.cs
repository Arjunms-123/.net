using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class questionaire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {


            int result = 0;
            if (btnl1.SelectedItem != null)
            {
                if (int.Parse(btnl1.SelectedItem.Value) == 2)
                {
                    result += 2;
                }
                else
                {
                    result = result - 1;
                }
            }
            if (btnl2.SelectedItem != null) {
                if (btnl2.SelectedItem.Value == "3")
                {
                    result += 2;
                }
                else
                {
                    result = result - 1;
                }
            }
            if (btnl3.SelectedItem != null) {
                if (btnl3.SelectedItem.Value == "1")
                {
                    result += 2;
                }
                else
                {
                    result = result - 1;
                }
            }
            if (btnl4.SelectedItem != null)
            {
                if (btnl4.SelectedItem.Value == "3")
                {
                    result += 2;
                }
                else
                {
                    result = result - 1;
                }
            }
            if (btnl5.SelectedItem != null)
            {
                if (btnl5.SelectedItem.Value == "2")
                {
                    result += 2;
                }
                else
                {
                    result = result - 1;
                }
            }
            lbl1.Text="Your score is \t" +result.ToString();
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            btnl1.SelectedIndex = -1;
            btnl2.SelectedIndex = -1;
            btnl3.SelectedIndex = -1;
            btnl4.SelectedIndex = -1;
            btnl5.SelectedIndex = -1;
            lbl1.Text = "";
        }
    }
}