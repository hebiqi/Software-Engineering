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

public partial class companyInfo : System.Web.UI.Page
{
    protected string Linkman, CompanyName, Kind, Calling, LicenceNumber, Address, Phone, Fax, Email, NetworkIP, Content;
    protected void Page_Load(object sender, EventArgs e)
    {
        bindCompanyInfo();
    }
    protected void bindCompanyInfo()
    {
        string sql = "select * from tb_User where ID=" + Request.QueryString["ID"].ToString();
        SqlDataReader sdr = dataOperate.getRow(sql);
        sdr.Read();
        Linkman = sdr["Linkman"].ToString();
        CompanyName = sdr["CompanyName"].ToString();
        Kind = sdr["Kind"].ToString();
        Calling = sdr["Calling"].ToString();
        LicenceNumber = sdr["LicenceNumber"].ToString();
        Address = sdr["Address"].ToString();
        Phone = sdr["Phone"].ToString();
        Fax = sdr["Fax"].ToString();
        Email = sdr["Email"].ToString();
        NetworkIP = sdr["NetworkIP"].ToString();
        Content = sdr["Content"].ToString();
    }
}
