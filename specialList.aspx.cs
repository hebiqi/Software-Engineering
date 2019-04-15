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

public partial class specialList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindSpecial();
    }

    protected void bindSpecial()
    {
        string sql = "select * from tb_Special where Auditing = '1' order by ID DESC";
        gvSpecial.DataSource = dataOperate.getDataset(sql, "tb_Special");
        gvSpecial.DataBind();
    }
    protected void gvSpecial_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvSpecial.PageIndex = e.NewPageIndex;
        gvSpecial.DataBind();
    }
}
