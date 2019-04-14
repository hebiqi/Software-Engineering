using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// dataOperate 的摘要说明
/// </summary>
public class dataOperate
{
    public static SqlConnection con;
    public dataOperate()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public static bool execSQL(string sql)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand com = new SqlCommand(sql, con);
        try
        {
            com.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
            con.Close();
            return false;
        }
        return true;
    }

    public static bool seleSQL(string sql)
    {
        int i;
        SqlConnection con = createCon();
        con.Open();
        SqlCommand com = new SqlCommand(sql, con);
        try
        {
            i = Convert.ToInt32(com.ExecuteScalar());
            con.Close();
        }
        catch (Exception e)
        {
            con.Close();
            return false;
        }
        //大于0存在
        if (i > 0)
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    public static DataSet getDataset(string sql, string table)
    {
        SqlConnection con = createCon();
        con.Open();
        DataSet ds;
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);
        ds = new DataSet();
        sda.Fill(ds, table);
        sda.Dispose();
        con.Dispose();
        return ds;

    }

    public static SqlDataReader getRow(string sql)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand com = new SqlCommand(sql, con);
        return com.ExecuteReader();
    }

    public static SqlConnection createCon()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        return con;
    }
}
