using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class insert : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Eg db1 = new Eg();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "insert into Emp values(@id_value,@name_value,@age_value)";   
            cmd.Parameters.AddWithValue("@id_value", int.Parse(txt2.Text));
            cmd.Parameters.AddWithValue("@name_value",txt1.Text);
            cmd.Parameters.AddWithValue("@age_value", txt3.Text);

            db1.execute(cmd);   


        }
    }
}