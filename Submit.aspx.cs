using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Submit : System.Web.UI.Page
{
   
    string s;
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "select * from issue_book where bid=" + TextBox1.Text + " " ;
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script>alert('Book not Found')</script>");
            FormView1.Visible = false;
            
        }
        else
        {
            TextBox1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()));

            FormView1.Visible = true;
            

        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            string s = "delete from issue_book where bid=" + TextBox1.Text + " ";
            dc.dal(s);
            Response.Write("<script>alert('Book submit succesfully')</script>");
        }
        else
            Response.Write("<script>alert('Book select')</script>");
            
       
    }
}