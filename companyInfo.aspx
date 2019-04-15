<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="companyInfo.aspx.cs" Inherits="companyInfo"  Title="企业推荐"%>
<asp:Content ID="Head1" ContentPlaceHolderID="HeadPlaceHolder1" Runat="Server">
    <style type="text/css">
        .top-grid h4 {
            font-size:16px;
            float:left;
            text-align:center;
            margin:0px;
            padding:3px 20px 20px 200px;
            box-sizing:border-box;
            -moz-box-sizing:border-box;
            -webkit-box-sizing:border-box;
        }
        .top-grid h4:nth-child(n+2) {
            clear:both;
        }
        .top-grid span {
            display:block;
            float:left;
            padding-bottom:20px;
            box-sizing:border-box;
            -moz-box-sizing:border-box;
            -webkit-box-sizing:border-box;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="top-grid">
        <h4>联&nbsp;&nbsp;系&nbsp;&nbsp;人：</h4>
        <span><%=Linkman %></span>          
        <h4>企业名称：</h4>
        <span><%=CompanyName %></span>
        <h4>企业性质：</h4>
        <span><%=Kind %></span>
        <h4>所属行业：</h4>
        <span><%=Calling %></span>
        <h4>营业执照号：</h4>
        <span><%=LicenceNumber %></span>
        <h4>公司地址：</h4>
        <span><%=Address %></span>
        <h4>联系电话：</h4>
        <span><%=Phone %></span>
        <h4>传&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;真：</h4>
        <span><%=Fax %></span>
        <h4>E-mail：</h4>
        <span><%=Email %></span>
        <h4>公司网址：</h4>
        <span><%=NetworkIP %></span>
        <h4>公司介绍：</h4>
        <span><%=Content %></span>
    </div>
</asp:Content>