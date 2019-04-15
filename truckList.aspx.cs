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

public partial class truckList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindTruck();
    }

    protected void bindTruck()
    {
        string sql = "select * from tb_Truck where Auditing = '1' order by ID DESC";
        gvTruck.DataSource = dataOperate.getDataset(sql, "tb_Truck");
        gvTruck.DataBind();
    }
    protected void gvTruck_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTruck.PageIndex = e.NewPageIndex;
        gvTruck.DataBind();
    }
}
