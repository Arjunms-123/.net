using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class dropdown1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ddlemployee_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlemployee0.Items.Clear();

            if (int.Parse(ddlemployee.SelectedItem.Value) == -1)
            {
                lbl1.Text = "Please select a state";
                Panel1.Visible = false;

            }
            else if (ddlemployee.SelectedIndex == 01)
            {
                lbl1.Text = "";
                Panel1.Visible = true;
                Dictionary<string, string> employee1 = new Dictionary<string, string>
            {
                { "100", "Select a district" },
                { "101","Thrissur"},
                { "102","Kannur"},
                { "103","Malappuram"}
            };
                foreach (var emp in employee1)
                {
                    ddlemployee0.Items.Add(new ListItem(emp.Value, emp.Key));
                }
            }
            else if (ddlemployee.SelectedIndex == 02)
            {
                lbl1.Text = "";
                Panel1.Visible = true;
                Dictionary<string, string> employee2 = new Dictionary<string, string>
            {
                { "200", "Select a district" },
                { "201","Chennai"},
                { "202","Coimbatore"},
                { "203","Madurai"}
            };
                foreach (var emp in employee2)
                {
                    ddlemployee0.Items.Add(new ListItem(emp.Value, emp.Key));
                }
            }
            else if (ddlemployee.SelectedIndex == 3)
            {
                lbl1.Text = "";
                Panel1.Visible = true;
                Dictionary<string, string> employee3 = new Dictionary<string, string>
        {
            { "300", "Select a district" },
            { "301", "Bengaluru" },
            { "302", "Mysuru" },
            { "303", "Hubli-Dharwad" }
        };
                foreach (var emp in employee3)
                {
                    ddlemployee0.Items.Add(new ListItem(emp.Value, emp.Key));
                }
            }
        }
    }
}