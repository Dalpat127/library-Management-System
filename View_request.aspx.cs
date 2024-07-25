using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class View_request : System.Web.UI.Page
{
    string s;
    datacon dc = new datacon();
    void showvalue()
    {
        string s = "select * from request";
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        showvalue();
    }
    public void abc1(object sender, CommandEventArgs e)
    {
        string rid = e.CommandName.ToString();
        string s = "update request set status='Accept' where id=" + rid;
        dc.dal(s);
        showvalue();   
    }
    public void abc2(object sender, CommandEventArgs e)
    {

        string rid = e.CommandName.ToString();
        string s = "update request set status='Reject' where id=" + rid;
        dc.dal(s);
        showvalue();
       
    }
    public void abc3(object sender, CommandEventArgs e)
    {

        string rid = e.CommandName.ToString();
        Response.Redirect("Request_new_book.aspx?rid=" + e.CommandName);
    }
    public void abc4(object sender, CommandEventArgs e)
    {

        string rid = e.CommandName.ToString();
        string s = "update request set status='Ordered' where id=" + rid;
        dc.dal(s);
        showvalue();
    }
  
}