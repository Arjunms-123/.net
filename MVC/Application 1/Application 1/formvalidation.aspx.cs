using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class formvalidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt1.Text = "";
            ddl1.SelectedIndex = -1;
            rbtn1.Checked = false;
            rbtn2.Checked = false;
            rbtn3.Checked = false;
            txt2.Text = "";
            ddl2.SelectedIndex = -1;
            chk1.Checked = false;
            lblm1.Text = "";
            lblm2.Text = "";
            lblm3.Text = "";
            lblm4.Text = "";
            lblm5.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt1.Text == "")
            {
                lblm1.Text = "*This field is mandatory";
            }
            else
            {
                lblm1.Text = "";
            }
            if (ddl1.SelectedItem.Value == "0")
            {
                lblm2.Text = "*This field is mandatory";
            }
            else
            {
                lblm2.Text = "";
            }
            if (!chk1.Checked) {
                lblm4.Text = "*Please confirm your data";
            }
            else
            {
                lblm4.Text = "";
            }
            if (!rbtn1.Checked && !rbtn2.Checked && !rbtn3.Checked) {
                lblm3.Text = "Select gender";
            }
            else
            {
                lblm3.Text = "";
            }
            if (ddl2.SelectedItem.Value == "0")
            {
                lblm5.Text = "*Select district";
            }
            else
            {
                lblm5.Text = "";
            }

        }
    }
}