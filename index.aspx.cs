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

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        bindFreight();       //自定义方法绑定货源信息
        bindTruck();         //自定义方法绑定车源信息
        bindSpecial();       //自定义方法绑定专线信息
        bindDepot();         //自定义方法绑定仓储信息
    }
   
    //绑定货源
    protected void bindFreight()
    {
        string sql = "select top 10 * from tb_Freight where Auditing = '1' order by ID DESC";
        gvFreight.DataSource = dataOperate.getDataset(sql, "tb_Freight");
        gvFreight.DataBind();
    }
    //绑定车源
    protected void bindTruck()
    {
        string sql = "select top 10 * from tb_Truck where Auditing = '1' order by ID DESC";
        gvTruck.DataSource = dataOperate.getDataset(sql, "tb_Truck");
        gvTruck.DataBind();
    }
    //绑定专线
    protected void bindSpecial()
    {
        string sql = "select top 10 * from tb_Special where Auditing = '1' order by ID DESC";
        gvSpecial.DataSource = dataOperate.getDataset(sql, "tb_Special");
        gvSpecial.DataBind();
    }
   
    //绑定仓储
    protected void bindDepot()
    {
        string sql = "select top 10 * from tb_Depot where Auditing = '1' order by ID DESC";
        gvDepot.DataSource = dataOperate.getDataset(sql, "tb_Depot");
        gvDepot.DataBind();
    }


   
}
