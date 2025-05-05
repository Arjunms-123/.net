using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class multiview1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0; 
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
        }
    }
}