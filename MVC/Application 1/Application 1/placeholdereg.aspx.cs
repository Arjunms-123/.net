using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class placeholdereg : System.Web.UI.Page
    {
        public Label newLabel=new Label();
        public TextBox newTextBox1=new TextBox();
        public TextBox newTextBox2 = new TextBox();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            newLabel.Text = "This is a dynamically created label<br>";
            newTextBox1 = new TextBox();
            newTextBox2 = new TextBox();

            PlaceHolder1.Controls.Add(newLabel);
            PlaceHolder1.Controls.Add((TextBox)newTextBox1);
            PlaceHolder1.Controls.Add((TextBox)newTextBox2);

        }
    }
}