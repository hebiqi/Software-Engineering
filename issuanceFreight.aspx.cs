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

public partial class issuanceFreight : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindSf();
        }
    }
    //绑定省份
    public void bindSf()
    { 
        string sql="select distinct sf from tb_City";
        //调用数据库操作类中的getDataset方法并接受返回的数据集
        DataSet ds=dataOperate.getDataset(sql, "tb_City");
        //绑定出发省的数据源
        this.ddlcSf.DataSource = ds.Tables["tb_City"].DefaultView;
        //绑定到达省的数据源
        this.ddldSf.DataSource = ds.Tables["tb_City"].DefaultView;
        //绑定出发省DropDownList控件的文本值
        ddlcSf.DataTextField = "sf";
        //绑定出发省DropDownList控件的值
        ddlcSf.DataValueField = "sf";
        ddldSf.DataTextField = "sf";
        ddldSf.DataValueField = "sf";
        this.ddlcSf.DataBind();
        this.ddldSf.DataBind();
    }
    //联动出发点城市
    protected void ddlcSf_SelectedIndexChanged(object sender, EventArgs e)
    {   
        //获取所选择省的值
        string sf = ddlcSf.SelectedValue.ToString();
        string sql = "select cs from tb_City where sf='" + sf+"'";
        //调用数据库操作类中的getDataset方法并接受返回的数据集
        DataSet ds = dataOperate.getDataset(sql, "tb_City");
        this.ddlcCs.DataSource = ds.Tables["tb_City"].DefaultView;
        //绑定出发市DropDownList控件的文本值
        ddlcCs.DataTextField = "cs";
        //绑定出发市DropDownList控件的值
        ddlcCs.DataValueField = "cs";        
        this.ddlcCs.DataBind();        
    }   

    //联动终点城市
    protected void ddldSf_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sf = ddldSf.SelectedValue.ToString();
        string sql = "select cs from tb_City where sf='" + sf + "'";
        DataSet ds = dataOperate.getDataset(sql, "tb_City");
        this.ddldCs.DataSource = ds.Tables["tb_City"].DefaultView;

        ddldCs.DataTextField = "cs";
        ddldCs.DataValueField = "cs";

        this.ddldCs.DataBind();
    }
    //发布货源

    protected void btnIssuance_Click(object sender, EventArgs e)
    {
        string UserName = Session["UserName"].ToString();
        string Start = ddlcSf.SelectedValue.ToString() + ddlcCs.SelectedValue.ToString();
        string Terminal = ddldSf.SelectedValue.ToString() + ddldCs.SelectedValue.ToString();
        string FreightType = this.txtFreightType.Text;
        string FreightWeight = this.txtFreightWeight.Text;
        string WeightUnit;
        if (rdibtnDun.Checked)
        {
            WeightUnit = "吨";
        }
        else
            if (rdibtnFan.Checked)
            {
                WeightUnit = "方";
            }
            else
            {
                WeightUnit = "件";
            }
        string Linkman = this.txtLinkman.Text;
        string Phone = this.txtPhone.Text;
        string Term = this.txtTerm.Text;
        string Content = this.txtContent.Text;
        string FBDate = DateTime.Now.ToString();
        string UserType = Session["UserType"].ToString();
        string sql = "insert into tb_Freight values('" + UserName + "','" + Start + "','" + Terminal + "','" + FreightType + "','" +
            FreightWeight + "','" + WeightUnit + "','" + Linkman + "','" + Phone + "','" + Term + "','" + Content + "','" + FBDate + "','" + UserType + "','')";

        if (dataOperate.execSQL(sql))
        {
            txtContent.Text = "";
            txtFreightType.Text = "";
            txtFreightWeight.Text = "";
            txtLinkman.Text = "";
            txtPhone.Text = "";
            txtTerm.Text = "";
            
            RegisterStartupScript("true", "<script>alert('发布成功！')</script>");
        }
        else
        {

            RegisterStartupScript("false", "<script>alert('发布失败！')</script>");
        }
       
    }
}
