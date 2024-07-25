using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_Book_Request : System.Web.UI.Page
{
    string s;
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime currentDate = DateTime.Now;
        Label1.Text = currentDate.ToShortDateString();
        s = "select * from request order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            TextBox4.Text = "1";
            Session["ssid"] = TextBox4.Text;
        }
        else
        {
            TextBox4.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
            Session["ssid"] = TextBox4.Text;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text!="")
        {
            string status = "Pending";
            string s = "insert into request values(" + TextBox4.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Session["sid"] + "','" + Label1.Text + "','" + status + "')";
            dc.dal(s);
            Response.Write("<script>alert('request succesfully')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = (Convert.ToInt32(TextBox4.Text) + 1).ToString();
        }
        else
            Response.Write("<script>alert('request failed')</script>");

    }
}