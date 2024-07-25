using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Request_new_book : System.Web.UI.Page
{
    datacon dc = new datacon();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s1 = "select * from addbook order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s1);
        if (ds.Tables[0].Rows.Count == 0)
        {
            TextBox1.Text = "1";
        }
        else
        {
            TextBox1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
        }
        string s = "select * from request where id=" +Request.QueryString["rid"];
        ds = dc.kal(s);
        TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
        TextBox3.Text = ds.Tables[0].Rows[0][2].ToString();
        TextBox4.Text = ds.Tables[0].Rows[0][3].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "insert into addbook values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        dc.dal(s);
        Response.Write("<script>alert('New Book Add Succesfully')</script>");
        
        string s1 = "update request set status='Available with " + TextBox1.Text + "' where id=" + Request.QueryString["rid"];
        dc.dal(s1);
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
    }
}