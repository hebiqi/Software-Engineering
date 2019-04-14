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

public partial class specialInfo : System.Web.UI.Page
{
    protected string Start, Terminal, Bewrite, TruckType, TruckLong, Load, SpecialPrice, Linkman, Phone, Term, Content, FBDate;
    protected void Page_Load(object sender, EventArgs e)
    {
        bindSpecialInfo();
    }
    protected void bindSpecialInfo()
    {
        string sql = "select * from tb_Special where ID=" + Request.QueryString["ID"].ToString();
        SqlDataReader sdr = dataOperate.getRow(sql);
        sdr.Read();
        Start = sdr["start"].ToString();
        Terminal = sdr["start"].ToString();
        Bewrite = sdr["Bewrite"].ToString();
        TruckType = sdr["TruckType"].ToString();
        TruckLong = sdr["TruckLong"].ToString();
        Load = sdr["TruckLoad"].ToString();
        SpecialPrice = sdr["SpecialPrice"].ToString();
        Linkman = sdr["Linkman"].ToString();
        Phone = sdr["Phone"].ToString();
        Term = Convert.ToDateTime(sdr["Term"]).ToLongDateString();
        Content = sdr["Content"].ToString();
        FBDate = Convert.ToDateTime(sdr["FBDate"]).ToLongDateString();

    }
}
