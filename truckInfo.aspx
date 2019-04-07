<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="truckInfo.aspx.cs" Inherits="truckInfo" Title="车源详细信息"%>
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
        <h4>出&nbsp;&nbsp;发&nbsp;&nbsp;地：</h4>
        <span><%=Start %></span>
        <h4>到&nbsp;&nbsp;达&nbsp;&nbsp;地：</h4>
        <span><%=Terminal %></span>         
        <h4>车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型：</h4>
        <span><%=TruckType %></span>
        <h4>车&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;长：</h4>
        <span><%=TruckLong %></span>
        <h4>载&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重：</h4>
        <span><%=Load %></span>
        <h4>联&nbsp;&nbsp;系&nbsp;&nbsp;人：</h4>
        <span><%=Linkman %></span>
        <h4>联系电话：</h4>
        <span><%=Phone %></span>
        <h4>有效日期：</h4>
        <span><%=Term %></span>
        <h4>发布日期：</h4>
        <span><%=FBDate %></span>
        <h4>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</h4>
        <span><%=Content %></span>
    </div>
</asp:Content>