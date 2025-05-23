using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class calendereg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            //lbl1.Text=Calendar1.SelectedDate + "<br>";
            //string dattim = Calendar1.SelectedDates.ToString();
            //string[] arr = dattim.Split(' ');
            //lbl1.Text="Selected Date : \t" + arr[0] + "<br>";
            //lbl1.Text = "Selected time : \t" + arr[1] + "<br>";
            lbl1.Text = "Selected Date: " + Calendar1.SelectedDate.ToShortDateString() + "<br>";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            
        }
    }
}