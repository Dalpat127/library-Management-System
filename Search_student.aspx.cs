using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Search_student : System.Web.UI.Page
{
    string s;
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkstudentid())
        {
            if (SqlDataSource1 != null)
            {
                FormView1.Visible = true;
                


            }
            else
            {
                FormView1.Visible =false;

            }
        }
        else
            Response.Write("<script>alert('student not found')</script>");

    }
        protected bool checkstudentid()
        {
            string s ="select * from addstudent where id='"+ TextBox1.Text +"'";
            DataSet ds = new DataSet();
            ds=dc.kal(s);
            if(ds.Tables[0].Rows.Count!=0)
                return true;
            else
                return false;
        }

    
}