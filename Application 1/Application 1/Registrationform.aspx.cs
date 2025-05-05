using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class Registrationform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            Txtname.Text = "";
            Txtaddress.Text = "";
            Txtempcode.Text = "";
            Txtpass.Text = "";
            Txtphone.Text = "";
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {

        }
    }
}