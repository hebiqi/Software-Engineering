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

public partial class freightList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindFreight();//自定义方法
    }

    protected void bindFreight()
    {
        string sql = "select * from tb_Freight where Auditing = '1' order by ID DESC";
        gvFreight.DataSource = dataOperate.getDataset(sql, "tb_Freight");   //调用getDataset方法将返回值绑定到GridView上
        gvFreight.DataBind();                                               
    }

    protected void gvFreight_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvFreight.PageIndex = e.NewPageIndex;
        gvFreight.DataBind();
    }
}
