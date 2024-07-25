using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    string s;
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
          string s1 = "SELECT * FROM addstudent WHERE id =" + TextBox1.Text + " and password='"+ TextBox2.Text +"'";
        DataSet ds = new DataSet();
        ds = dc.kal(s1);
        if(TextBox1.Text=="1" && TextBox2.Text=="987")
        {
            
            Response.Redirect("New_book.aspx");
        }
        else if (ds.Tables[0].Rows.Count != 0)
        {
            Session["sid"] = TextBox1.Text;
            Response.Redirect("Student/Profile.aspx");
        }
        else
        {
           
            Response.Write("<script>alert('Invalid student ')</script>");
            TextBox1.Text = "";
        }


        


    }   
    

}