using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class navvaluepassing1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            string un = txt1.Text;
            string pw = txt2.Text;

            Response.Redirect("navvaluepassing2.aspx?n1="+un+"&n2="+pw);
        }
    }
}