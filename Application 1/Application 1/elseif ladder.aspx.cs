using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class elseif_ladder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btngrade_Click(object sender, EventArgs e)
        {
            string n1 = Txtname.Text;
            int n2 = int.Parse(Txtmath.Text);
            int n3 = int.Parse(Txtche.Text);
            int n4 = int.Parse(Txthin.Text);
            int n5 = int.Parse(Txtcom.Text);
            double sum = n2 + n3 + n4 + n5;
            double avg = (sum / 400) *100 ;
            if (avg == 100)
            {
                lblgrade.Text = "Your name is :" + n1 + "<br>Total marks:" + sum + "<br>Percentage:" + avg + "<br>your Grade is A";
            }
            else if (avg >80 && avg<99)
            {
                lblgrade.Text = "Your name is :" + n1 + "<br>Total marks:" + sum + "<br>Percentage" + avg + "<br> your Grade is B";
            }
            else if (avg>60 && avg<79)
            {
                lblgrade.Text = "Your name is :" + n1 + "<br>Total marks:" + sum + "<br>Percentage" + avg + " <br>your Grade is C";
            }
            else if (avg>40 && avg<59)
            {
                lblgrade.Text = "Your name is :" + n1 + "<br>Total marks:" + sum + "<br>Percentage" + avg + " <br>your Grade is D";
            }
            else
            {
                lblgrade.Text = "Your name is :" + n1 + "<br>Total marks:" + sum + "<br>Percentage" + avg + " <br>You have failed";
            }


        }
    }
}