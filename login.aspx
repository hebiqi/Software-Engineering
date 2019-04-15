<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="log" Title="登录" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="top-grid">
        <div class="grid-title"><h3>用户注册</h3></div>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="viewmore-s">个人会员注册</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="viewmore-s">企业会员注册</asp:LinkButton>
        </p>
        <asp:Panel ID="pelBase" runat="server">
            <div class="container login-container">
                <div class="row login-row-title">
                    <div class="col-sm-3 col-xs-3 text-center">
                        
                    </div>
                    <div class="col-sm-6 col-xs-6 text-center">
                        <h2>会员注册 </h2>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">用户名：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>                        
                    </div>
                    <div class="col-sm-3 col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName"
                            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">密 &nbsp; &nbsp; 码：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>                        
                    </div>
                    <div class="col-sm-3 col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="txtPass"
                            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">确认密码：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtQpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>                        
                    </div>
                    <div class="col-sm-3 col-xs-3">
                        <asp:CompareValidator ID="CompareValidatorQpass" runat="server" ControlToCompare="txtPass"
                            ControlToValidate="txtQpass" ErrorMessage="两次密码不一致"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">密码提示问题：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtPassQuestion" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">密码提示答案：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtPassSolution" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center"></div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:Button ID="btnNext" runat="server" Text="下一步" OnClick="btnNext_Click" CssClass="form-control btn-danger" Width="100"/>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
            </div>
        </asp:Panel>                                                                            
        <asp:Panel ID="pelQyInfo" runat="server">
            <div class="container login-container">
                <div class="row login-row-title">
                    <div class="col-sm-3 col-xs-3 text-center"></div>
                    <div class="col-sm-6 col-xs-6">
                        <h2>详细信息</h2>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">联系人：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtLinkman" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">企业名称：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">企业性质：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:DropDownList ID="ddlKind" runat="server" CssClass="form-control">
                            <asp:ListItem>私企</asp:ListItem>
                            <asp:ListItem>国企</asp:ListItem>
                            <asp:ListItem>外资</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">所属行业：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtCalling" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">营业执照号：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtLicenceNumber" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">公司地址：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">联系电话：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">传真：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtFax" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">E-mail：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEamil" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="E-mail格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="134px" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">公司网址：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtNetworkIP" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">公司介绍：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center"></div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:Button ID="btnQyLogin" runat="server" Text="注　册" OnClick="btnQyLogin_Click" CssClass="form-control btn-danger" Width="100"/>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
            </div>
        </asp:Panel>
                            
        <asp:Panel ID="pelGrInfo" runat="server">
            <div class="container login-container">
                <div class="row login-row-title">
                    <div class="col-sm-3 col-xs-3 text-center"></div>
                    <div class="col-sm-6 col-xs-6">
                        <h2>详细信息</h2>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center"> 联系人：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtGrLinkman" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">联系电话：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtGrPhone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center">所在地：</div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:TextBox ID="txtGrAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
                <div class="row">
                    <div class="col-sm-3 col-xs-3 text-center"></div>
                    <div class="col-sm-6 col-xs-6">
                        <asp:Button ID="btnGrLogin" runat="server" OnClick="btnGrLogin_Click" Text="注　册" CssClass="form-control btn-danger" Width="100"/>
                    </div>
                    <div class="col-sm-3 col-xs-3"></div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

