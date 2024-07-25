using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class New_student : System.Web.UI.Page
{
    string s;
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        s = "select * from addstudent order by id desc";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0) 
        {
            TextBox1.Text = "100";
        }
        else
        {
            TextBox1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "insert into addstudent values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+ TextBox6.Text +"')";
        dc.dal(s);
        Response.Write("<script>alert('New Student Add Succesfully')</script>");
        TextBox1.Text = (Convert.ToInt32(TextBox1.Text) + 1).ToString();
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}