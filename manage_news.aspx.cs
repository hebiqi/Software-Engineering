using System;
using System.Data;
using System.Configuration;
using System.Collections;

using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Manage_manage_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindNews();
    }
    public void bindNews()
    {
        string sql = "select * from tb_News";
        gvNews.DataSource = dataOperate.getDataset(sql,"tb_News");
        gvNews.DataKeyNames = new string[] { "ID" };
        gvNews.DataBind();
    }
    protected void gvNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sql = "delete from tb_News where ID = " + gvNews.DataKeys[e.RowIndex].Value.ToString();
        if (dataOperate.execSQL(sql))
        {
            Page.RegisterStartupScript("true", "<script>alert('删除成功！')</script>");
        }
        else
        {
            Page.RegisterStartupScript("false", "<script>alert('删除失败！')</script>");
        }
     
    }
}
