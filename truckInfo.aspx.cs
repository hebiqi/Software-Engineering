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

public partial class truckInfo : System.Web.UI.Page
{
    protected string Start, Terminal, TruckType, TruckLong, Load, Linkman, Phone, Term, Content, FBDate;
    protected void Page_Load(object sender, EventArgs e)
    {
        bindTruck();
    }
    protected void bindTruck()
    {
        string sql = "select * from tb_Truck where ID=" + Request.QueryString["ID"].ToString();
        SqlDataReader sdr = dataOperate.getRow(sql);
        sdr.Read();

        Start = sdr["Start"].ToString();
        Terminal = sdr["Terminal"].ToString();
        TruckType = sdr["TruckType"].ToString();
        TruckLong = sdr["TruckLong"].ToString();
        Load = sdr["TruckLoad"].ToString();
        Linkman = sdr["Linkman"].ToString();
        Phone = sdr["Phone"].ToString();
        Term = Convert.ToDateTime(sdr["Term"]).ToLongDateString();
        Content = sdr["Content"].ToString();
        FBDate = Convert.ToDateTime(sdr["FBDate"]).ToLongDateString();

    }

}
