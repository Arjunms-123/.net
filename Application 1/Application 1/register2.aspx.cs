using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class registrationpro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (ddl1.SelectedIndex == 0)
            {
                lbl3.Text = "**Select role";
                chk1.Visible = false;
            }
            else if (ddl1.SelectedIndex == 1)
            {
                chk1.Visible = true;
                lbl3.Text = "";
            }
            else if (ddl1.SelectedIndex == 2)
            {
                chk1.Visible = false;
                lbl3.Text = "";
            }

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (txt1.Text == "")
            {
                lbl1.Text = "**Fill the field";
            }
            else
            {
                lbl1.Text = "";
               
            }
            if (txt2.Text == "")
            {
                lbl2.Text = "**Fill the field";
            }
            else
            {
                lbl2.Text = "";
            }
            if (txt3.Text == "")
            {
                lbl4.Text = "**Fill the field";
            }
            else
            {
                lbl4.Text = "";
            }
            if (txt4.Text == "")
            {
                lbl5.Text = "**Fill the field";
            }
            else if (txt3.Text != txt4.Text)
            {
                lbl5.Text = "**Password does not match";
            }
            else
            {
                lbl5.Text = "";
            }
            Emp db1 = new Emp();
            SqlCommand cmd = new SqlCommand();
          
            cmd.CommandText = "insert into Register values(@Empcode_value,@EmpName_value,@Role_value,@subjects_value,@password_value)";
            cmd.Parameters.AddWithValue("@Empcode_value", int.Parse(txt1.Text));
            cmd.Parameters.AddWithValue("@EmpName_value", txt2.Text);
            cmd.Parameters.AddWithValue("@Role_value", txt3.Text);
            string selectedSubjects = string.Join(", ", chk1.Items
                .Cast<ListItem>()
                .Where(item => item.Selected)
                .Select(item => item.Text));
            cmd.Parameters.AddWithValue("@subjects_value", selectedSubjects);
            cmd.Parameters.AddWithValue("@password_value", txt3.Text);


            db1.execute(cmd);
            Response.Redirect("register.aspx");
            
        }

        protected void chk1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (chk1.Visible && chk1.SelectedIndex == -1)
            {
                lbl6.Text = "**Select at least one subject";

            }
            else
            {
                lbl6.Text = "";
            }
        }

        
    }
}
