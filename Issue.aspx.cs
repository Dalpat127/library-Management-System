using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Issue : System.Web.UI.Page
{
    string s;
    datacon dc = new datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime CurrentDate = DateTime.Now;
        DateTime FutureDate = CurrentDate.AddDays(10);
        TextBox3.Text = CurrentDate.ToShortDateString();
        TextBox4.Text = FutureDate.ToShortDateString();


    }  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string s1 = "SELECT * FROM issue_book WHERE bid =" + TextBox1.Text + "";
        DataSet ds = new DataSet();
        ds = dc.kal(s1);

        if (checkStudentid())
        {
            if (checkBookid())
            {
                if (bookAvailCheck())
                {
                    
                    string s = "Insert into issue_book Values(" + TextBox1.Text + "," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "')";
                    dc.dal(s);
                    Response.Write("<script>alert('Book is issued')script>");
             
                    TextBox1.Text = TextBox2.Text = string.Empty;
                }
                else
                {
                    Response.Write("<script>alert('Book is already issued')script>");
                }

            }
            else
                Response.Write("<script>alert('Invalid Book id')</script>");

        }

        else
        {
            Response.Write("<script>alert('Invalid Student id')</script>");
        }

    }
    protected bool checkBookid()
    {
        string s = " Select* from addbook where id = " + TextBox1.Text;
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            return false;
        }
        else
            return true;
    }
    protected bool checkStudentid()
    {
        string s = " Select * from addstudent where id = " + TextBox2.Text;
        DataSet ds = new DataSet();
        ds = dc.kal(s); 
        if (ds.Tables[0].Rows.Count == 0)
        {
            return false;
        }
        else
            return true;
    }
    protected bool bookAvailCheck()
    {
        string s = "Select *from addbook where id=" + TextBox1.Text;
        DataSet ds = new DataSet();
        ds = dc.kal(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            return false;
        }
        else
            return true;
    }

 }
