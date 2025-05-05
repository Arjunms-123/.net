using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class exp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int originalNumber = int.Parse(Txt1.Text);
            int s = 0;
            int digits = originalNumber.ToString().Length;
            int number = originalNumber;
            while (number > 0)
            {
                int digit = number % 10;
                s += (int)Math.Pow(digit, digits);
                number /= 10;

            }
            if (s == originalNumber)
                lbl1.Text = originalNumber + "\tis an amstrong";
            else
                lbl1.Text = originalNumber + "\t is not amstrong";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int lower = int.Parse(TextBox1.Text);
            int upper = int.Parse(TextBox2.Text);
            StringBuilder amstrongNumber= new StringBuilder();
            for (int i = lower; i <= upper; i++)
            {
                {
                    int originalNumber = i;
                    int s = 0;
                    int digits = originalNumber.ToString().Length;
                    int number = originalNumber;

                    while (number > 0)
                    {
                        int digit = number % 10;
                        s += (int)Math.Pow(digit, digits);
                        number /= 10;
                    }
                    if(s == originalNumber)
                    {
                        amstrongNumber.Append(originalNumber+" ");
                    }
                }
                if(amstrongNumber.Length > 0)
                {
                    Label4.Text = "Amstrong numbers:\t"+amstrongNumber.ToString();
                }
                else
                {
                    Label4.Text= "There is no amstrong numbers between\t"+lower+"\tand\t"+upper;
                }

            }
        }
    }
}
