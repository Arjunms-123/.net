using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class radiobutonlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Dictionary<string, string> gender = new Dictionary<string, string>
            {
                {"1","Male"},
                {"2","Female"},
                {"3","others"}

            };
                foreach (var gen in gender)
                {
                    btnl2.Items.Add(new ListItem(gen.Value, gen.Key));
                }
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl1.Text = rbtnl1.SelectedItem.Text;
        }

        protected void btn1_Click1(object sender, EventArgs e)
        {
            lbl2.Text = "value is\t"+rbtnl1.SelectedItem.Text;
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            lbl2.Text = "value" + btnl2.SelectedItem.Text;
        }
    }
}