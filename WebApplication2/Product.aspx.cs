using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;

namespace WebApplication2
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(ddl1.SelectedValue))
            {
                Panel2.Visible = true;
                txt1.ReadOnly = true;
                string pro=ddl1.SelectedValue;
                if (pro == "1")
                {
                    txt1.Text= "1000";
                }
                if (pro == "2")
                {
                    txt1.Text = "1500";
                }
                if (pro == "3")
                {
                    txt1.Text = "2000";
                }
                if (pro == "4")
                {
                    txt1.Text = "25000";
                }
            }
            else
            {
                Panel2.Visible = false;
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (txt2.Text != null)
            {
                Panel3.Visible = true;
            }
            else
            {
                Panel3.Visible = false;
            }
            int quantity=int.Parse(txt2.Text);  
            int cost=int.Parse(txt1.Text);
            int tot = cost * quantity;
            txt3.Text = tot.ToString();     
        }
    }
}