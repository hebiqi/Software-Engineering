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

public partial class companyList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindCompany();
    }
    protected void bindCompany()
    {
        string sql = "select * from tb_User order by ID DESC ";
        gvCompany.DataSource = dataOperate.getDataset(sql, "tb_User");
        gvCompany.DataBind();
        
    }
    protected void gvCompany_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCompany.PageIndex = e.NewPageIndex;
        gvCompany.DataBind();
    }
}
