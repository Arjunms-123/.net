using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class checkbox2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
                Dictionary<string, string> sel = new Dictionary<string, string>
            {
                { "1","Ronaldo"},
                { "2","Messi"},
                { "3","Neymar"}
            };
                foreach (var se in sel)
                {
                    chk4.Items.Add(new ListItem(se.Value, se.Key));
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            lbl1.Text = "";
            if (chk1.Checked)
            {
                lbl1.Text = lbl1.Text + chk1.Text + "\t";
            }
            if (chk2.Checked)
            {
                lbl1.Text = lbl1.Text + chk2.Text + "\t";
            }
            if (chk3.Checked)
            {
                lbl1.Text = lbl1.Text + chk3.Text + "\t";
            }
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            List<string> sel = new List<string>();
            foreach(ListItem item in chk4.Items)
            {
                if (item.Selected)
                {
                    sel.Add(item.Value+"--"+item.Text);
                }
            }
            lbl3.Text=string.Join("<br>", sel);   
            Response.Write(string.Join(",",sel));
        }
    }
}