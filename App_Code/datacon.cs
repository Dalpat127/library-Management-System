using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for datacon
/// </summary>
public class datacon
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;

	public datacon()
	{
        con = new SqlConnection(@"Data Source=DESKTOP-1H4QHR3;Initial Catalog=studen_tmanagement;Integrated Security=True");
        con.Open();
	}
    public void dal(string s)
    {
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
    }
    public DataSet kal(string s)
    {
        DataSet ds=new DataSet();
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        return ds;
    }
}