using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class fileuploadeg : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                string filePath=Server.MapPath("~/uploads/"+fileName);
                FileUpload1.SaveAs(filePath);
                lbl2.Text="File uoloaded successfully";
            }
            else
            {
                lbl2.Text = "Please select a file to upload";
            }
        }
    }
}