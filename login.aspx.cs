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

public partial class log : System.Web.UI.Page
{
    public static string name;
    public static string pass;
    public static string passQuestion;
    public static string passSolution;
    public static int loginType;
    protected void Page_Load(object sender, EventArgs e)
    {
        pelBase.Visible = false;
        pelQyInfo.Visible = false;
        pelGrInfo.Visible = false;

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        loginType = 0;
        pelBase.Visible = true;
        pelQyInfo.Visible = false;
        pelGrInfo.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        loginType = 1;
        pelBase.Visible = true;
        pelQyInfo.Visible = false;
        pelGrInfo.Visible = false;
    }


    public void bindEmail()
    {
        string Subject = "欢迎登陆＊＊物流信息管理平台";
        string Content = "您登陆物流信息管理平台帐号为：" + name + "密码为：" + pass;
        string Receiver = txtEmail.Text;
        string server = "Ls";
        jmail.MessageClass myJmail = new jmail.MessageClass();
        myJmail.Charset = "GB2312"; //设置使用的邮件字符集，默认US-ASCII 中国则为GB2312
        myJmail.ISOEncodeHeaders = false; //邮件头是否使用iso-8859-1编码 默认值为true;
        myJmail.From = "devilsu@sina.com";  //返回或设置发件人的地址
        myJmail.Subject = Subject;　 //邮件的主题（标题）
        myJmail.AddRecipient(Receiver, "", ""); //添加收件人       
        myJmail.Body = Content;  //邮件的正文
        myJmail.Send(server, true); //发送邮件      
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        name = this.txtName.Text;
        pass = this.txtPass.Text;
        passQuestion = this.txtPassQuestion.Text;
        passSolution = this.txtPassSolution.Text;


        string QySql = "select * from tb_User where UserName='" + name + "'";
        string GrSql = "select * from tb_GrUser where Name='" + name + "'";
        if (loginType == 0)
        {
            if (!dataOperate.seleSQL(GrSql))
            {
                pelBase.Visible = false;
                pelQyInfo.Visible = false;
                pelGrInfo.Visible = true;
            }
            else
                RegisterStartupScript("false", "<script>alert('用户名已经此在')</script>");

        }
        else
        {
            if (!dataOperate.seleSQL(QySql))
            {
                pelBase.Visible = false;
                pelQyInfo.Visible = true;
                pelGrInfo.Visible = false;
            }
            else
                RegisterStartupScript("false", "<script>alert('用户名已经此在')</script>");

        }
    }
    protected void btnQyLogin_Click(object sender, EventArgs e)
    {
        string linkman = this.txtLinkman.Text;
        string companyName = this.txtCompanyName.Text;
        string ddlKind = this.ddlKind.SelectedValue;
        string calling = this.txtCalling.Text;
        string licenceNumber = this.txtLicenceNumber.Text;
        string address = this.txtAddress.Text;
        string phone = this.txtPhone.Text;
        string fax = this.txtFax.Text;
        string email = this.txtEmail.Text;
        string networkIP = this.txtNetworkIP.Text;
        string content = this.txtContent.Text;
        string adSql = "insert into tb_User values('" + name + "','" + pass + "','" + passQuestion + "','" + passSolution + "','" + linkman + "','" +
            companyName + "','" + ddlKind + "','" + calling + "','" + licenceNumber + "','" + address + "','" + phone + "','" + fax + "','" +
            email + "','" + networkIP + "','" + content + "','','') ";
        if (dataOperate.execSQL(adSql))
        {
            bindEmail();
            Response.Write("<script>alert('添加成功！');location='index.aspx'</script>");

        }
        else
        {
            RegisterStartupScript("false", "<script>alert('添加失败！');location='index.aspx';</script>");
        }
    }

    protected void btnGrLogin_Click(object sender, EventArgs e)
    {
        string grLinkman = this.txtGrLinkman.Text;
        string grPhone = this.txtGrPhone.Text;
        string grAddress = this.txtGrAddress.Text;
        string adsql = "insert into tb_GrUser values('" + name + "','" + pass + "','" + passQuestion + "','" + passSolution + "','" + grLinkman + "','" + grPhone + "','" + grAddress + "','','')";
        if (dataOperate.execSQL(adsql))
        {

            Response.Write("<script>alert('添加成功')</script>");
        }
        else
        {
            RegisterStartupScript("false", "<script>alert('添加失败！');location='index.aspx';</script>");
        }
    }
}
