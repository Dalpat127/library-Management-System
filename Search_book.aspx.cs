﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Search_book : System.Web.UI.Page
{
    string s;
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (checkbookid())
        {
            if (SqlDataSource1 != null)
            {
                FormView1.Visible = true;



            }
            else
            {
                FormView1.Visible = false;

            }
        }
        else
            Response.Write("<script>alert('Book not found')</script>");

    }
    protected bool checkbookid()
    {
        string s = "select * from addbook where id='" + TextBox1.Text + "'";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count != 0)
            return true;
        else
            return false;

    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        FormView1.Visible = true;
    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        FormView1.Visible = false;
    }
}