using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class freightInfo : System.Web.UI.Page
{
    protected string Start, Terminal, FreightType, FreightWeight, Linkman, Phone, Term, Content, FBDate;
    protected void Page_Load(object sender, EventArgs e)
    {
        bindFreightInfo();
    }

    protected void bindFreightInfo()
    {
        string ID = Request.QueryString["ID"].ToString();
        string sql = "select * from tb_Freight where ID=" + ID;
        SqlDataReader sdr = dataOperate.getRow(sql);
        sdr.Read();
        Start = sdr["start"].ToString();
        Terminal = sdr["Terminal"].ToString();
        FreightType = sdr["FreightType"].ToString();
        FreightWeight = sdr["FreightWeight"].ToString() + sdr["WeightUnit"].ToString();
        Linkman = sdr["Linkman"].ToString();
        Phone = sdr["Phone"].ToString();
        Term = Convert.ToDateTime(sdr["Term"]).ToLongDateString();
        Content = sdr["Content"].ToString();
        FBDate = Convert.ToDateTime(sdr["FBDate"]).ToLongDateString();

    }

}
