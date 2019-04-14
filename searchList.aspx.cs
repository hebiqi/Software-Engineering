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

public partial class searchList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string searchType = Session["searchType"].ToString();
        switch (searchType)
        {
            case "tb_Freight": bindFreight(); break;
            case "tb_User": bindCompany(); break;
            case "tb_Truck": bindTruck(); break;
            case "tb_special": bindSpecial(); break;
            case "tb_Depot": bindDepot(); break;
            case "tb_Job": bindJob(); break;
        }
    }
    //公司信息
    protected void bindCompany()
    {
        string sql = Session["searchSql"].ToString();
        gvCompany.DataSource = dataOperate.getDataset(sql, "tb_User");
        gvCompany.DataBind();

    }//公司分页
    protected void gvCompany_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCompany.PageIndex = e.NewPageIndex;
        gvCompany.DataBind();
    }
    //绑定仓储信息
    protected void bindDepot()
    {
        string sql = Session["searchSql"].ToString();
        gvDepot.DataSource = dataOperate.getDataset(sql, "tb_Depot");
        gvDepot.DataBind();
    }//仓储信息分页
    protected void gvDepot_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDepot.PageIndex = e.NewPageIndex;
        gvDepot.DataBind();
    }//绑定货源信息
    protected void bindFreight()
    {
        string sql = Session["searchSql"].ToString();
        gvFreight.DataSource = dataOperate.getDataset(sql, "tb_Freight");   //调用getDataset方法将返回值绑定到GridView上
        gvFreight.DataBind();
    }
    //货源信息分页
    protected void gvFreight_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvFreight.PageIndex = e.NewPageIndex;
        gvFreight.DataBind();
    }//绑定招聘信息
    protected void bindJob()
    {
        string sql = Session["searchSql"].ToString();
        gvJob.DataSource = dataOperate.getDataset(sql, "tb_Job");
        gvJob.DataBind();
    }//招聘信息分页
    protected void gvJob_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvJob.PageIndex = e.NewPageIndex;
        gvJob.DataBind();
    }//绑定专线信息
    protected void bindSpecial()
    {
        string sql = Session["searchSql"].ToString();
        gvSpecial.DataSource = dataOperate.getDataset(sql, "tb_Special");
        gvSpecial.DataBind();
    }//专线信息分页
    protected void gvSpecial_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvSpecial.PageIndex = e.NewPageIndex;
        gvSpecial.DataBind();
    }//绑定车源信息
    protected void bindTruck()
    {
        string sql = Session["searchSql"].ToString();
        gvTruck.DataSource = dataOperate.getDataset(sql, "tb_Truck");
        gvTruck.DataBind();
    }//车源信息分页
    protected void gvTruck_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTruck.PageIndex = e.NewPageIndex;
        gvTruck.DataBind();
    }
}
