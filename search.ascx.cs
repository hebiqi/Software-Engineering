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

public partial class search : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindSearchType();         
        }
    }
    //绑定信息类型下拉列表
    public void bindSearchType()
    {
        string sql = "select distinct searchType,type from tb_Search";      
        DataSet ds = dataOperate.getDataset(sql, "tb_Search");              
        ddlSearchType.DataSource = ds.Tables["tb_Search"].DefaultView;        
        ddlSearchType.DataTextField = "searchType";
        ddlSearchType.DataValueField = "type";
        ddlSearchType.DataBind();
        bindKey(); 
    }
    //自定义方法绑定关键字下拉列表
    public void bindKey()
    {
        //获取当前选择的信息类型的表名
        string type = ddlSearchType.SelectedValue.ToString();
        string sql = "select searchKey,keyword from tb_Search where type='" + type + "'";
        //调用数据库操作类中getDataset方法并获取返回的数据集
        DataSet ds = dataOperate.getDataset(sql, "tb_Search");          
        //绑定关键字类别的DropDownList控件的数据源
        ddlKeyType.DataSource = ds.Tables["tb_Search"].DefaultView;   
        //绑定关键字类别DropDownList控件文本的字段名
        ddlKeyType.DataTextField = "searchKey";
        //绑定关键字类别DropDownList控件值的字段名   
        ddlKeyType.DataValueField = "keyword";
        ddlKeyType.DataBind();
        bindTerminal();                 //调用自定义方法是否显示到达地文本框       
    }
     //根据信息类型绑定关键字下拉列表
    protected void ddlSearchType_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindKey();      
    }
    //显示到达地文本框
    public void bindTerminal()
    {
        //判断关键字类型是否选择了出发地
        if (ddlKeyType.SelectedValue.ToString() == "Start")
        {
            txtTerminal.Text = "";  //清空到达地文本框
            labTerminal.Visible = true;  
            txtTerminal.Visible = true;
            this.pTerminal.Visible = true;
        }
        else
        {
            labTerminal.Visible = false;
            txtTerminal.Visible = false;
            this.pTerminal.Visible = false;
        }              
    }
         
    protected void ddlKeyType_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindTerminal(); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string table = ddlSearchType.SelectedValue.ToString();
        string keyType = ddlKeyType.SelectedValue.ToString();
        string keys = txtKey.Text;
        string sql;
        if (txtTerminal.Text != "")
        {
            sql = "select * from " + table + " where " + keyType + " like '%" + keys + "%' and  terminal like '%" + txtTerminal.Text + "%'";
        }
        else
        {
            sql = "select * from " + table + " where " + keyType + " like '%" + keys + "%'";
        }
        Session["searchSql"] = sql;
        Session["searchType"] = ddlSearchType.SelectedValue.ToString();
        Response.Redirect("searchList.aspx");
    }
}
