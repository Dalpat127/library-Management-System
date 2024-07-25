using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_My_Issued : System.Web.UI.Page
{
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

        string s1 = "select * from issue_book where sid=" + Session["sid"].ToString();
        DataSet ds = new DataSet();
        ds = dc.kal(s1);
        if (ds.Tables[0].Rows.Count == 0)
            Response.Write("<script>alert('This Student No Any Book Issued')</script>");

    }
}