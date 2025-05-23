using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class update : System.Web.UI.Page
    {
        string a = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string a = Request.QueryString["Id"];
                Eg db1 = new Eg();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from STUD where Id=@Id";
                cmd.Parameters.AddWithValue("@Id", a);
                SqlDataReader dr = db1.getresult(cmd);
                if (dr.Read())
                {
                    txt1.Text = dr.GetInt32(0).ToString();
                    txt2.Text = dr.GetString(1);
                    txt3.Text = dr.GetString(2);
                    txt4.Text = dr.GetInt32(3).ToString();
                    txt5.Text = dr.GetInt32(4).ToString();




                }
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Eg db1= new Eg();
            SqlCommand cmd= new SqlCommand();
            cmd.CommandText = "update STUD set Name=@Name,Class=@Class,Age=@Age,Marks=@Marks where Id=@Id";
            cmd.Parameters.AddWithValue("@Id",txt1.Text);
            cmd.Parameters.AddWithValue("@Name", txt2.Text);
            cmd.Parameters.AddWithValue("@Class", txt3.Text);
            cmd.Parameters.AddWithValue("@Age", txt4.Text);
            cmd.Parameters.AddWithValue("@Marks", txt5.Text);
            db1.execute(cmd);
            Response.Redirect("viewdatalist1.aspx");

        }
    }
}