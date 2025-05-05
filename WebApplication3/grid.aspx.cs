using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class gridview2 : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {
            Eg db1= new Eg();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * from Emp";

            System.Data.SqlClient.SqlDataReader dr=db1.getresult(cmd);

            GridView2.DataSource = dr;
            GridView2.DataBind();
            
        }
    }
}