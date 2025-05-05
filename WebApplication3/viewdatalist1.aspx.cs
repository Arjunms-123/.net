using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class viewdatalist1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                BindData();
            }

        }
        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Remove") {
                int IdToRemove = Convert.ToInt32(e.CommandArgument);
                Eg db = new Eg();
                SqlCommand cmd = new SqlCommand("delete from STUD where Id=@Id");
                cmd.Parameters.AddWithValue("@Id", IdToRemove); 
                db.execute(cmd);

                BindData();
            }
        }
        public void BindData()
        {
            Eg db1 = new Eg();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from STUD";

            System.Data.SqlClient.SqlDataReader dr = db1.getresult(cmd);

            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

    }
}