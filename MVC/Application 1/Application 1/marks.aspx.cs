using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class marks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Txtname1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Txtname4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(Txtmaths.Text);
            int n2 = int.Parse(Txthindi.Text);
            int n3 = int.Parse(Txteng.Text);
            int n4 = int.Parse(Txtche.Text);
            int n5 = int.Parse(Txtphy.Text);
            int n6 = int.Parse(Txtcom.Text);
            int sum = n1 + n2 + n3 + n4 + n5 + n6;
            int avg = sum / 6;
            lblsum.Text = "Sum is :" + sum + " \nAvg is :" + avg;


        }

        protected void btneligible_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(Txtage.Text);
            if (n1 >= 18)
            {
                lbleligible.Text = "He is eligible";

            }
            else
            {
                lbleligible.Text = "He is Not-eligible";

            }
            
        }

    }
}   