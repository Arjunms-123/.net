using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class sum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(Txtnum1.Text);
            int n2 = int.Parse(Txtnum2.Text);
            int sum = n1 + n2;
            Lblsum.Text = sum.ToString();

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Txtnum1.Text = "";
            Txtnum2.Text="";
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(Txtnum1.Text);
            int n2 = int.Parse(Txtnum2.Text);
            int sum = n1 - n2;
            Lblsum.Text = sum.ToString();
        }

        protected void btnmul_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(Txtnum1.Text);
            int n2 = int.Parse(Txtnum2.Text);
            int sum = n1 * n2;
            Lblsum.Text = sum.ToString();
        }

        protected void btndiv_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(Txtnum1.Text);
            int n2 = int.Parse(Txtnum2.Text);
            int sum = n1 / n2;
            Lblsum.Text = sum.ToString();
        }
    }
}