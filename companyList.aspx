<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="companyList.aspx.cs" Inherits="companyList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="top-grid">
        <div class="grid-title"><h3>企业信息</h3></div>
         <asp:GridView ID="gvCompany" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvCompany_PageIndexChanging" CssClass="grid" Width="80%" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CompanyName" HeaderText="企业名称" />
                <asp:BoundField DataField="Kind" HeaderText="企业性质" />
                <asp:BoundField DataField="Calling" HeaderText="所属行业" />
                <asp:BoundField DataField="Linkman" HeaderText="联系人" />
                <asp:BoundField DataField="Phone" HeaderText="联系电话" />
                <asp:TemplateField HeaderText="详细信息">
                    <ItemTemplate>
                        <a href="companyInfo.aspx?ID=<%#Eval("ID")%>">详细信息</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
             <EditRowStyle BackColor="#999999" />
             <FooterStyle BackColor="#EC005F" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#EC005F" Font-Bold="True" ForeColor="White" Height="30px"/>
             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="20px"/>
             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#E9E7E2" />
             <SortedAscendingHeaderStyle BackColor="#506C8C" />
             <SortedDescendingCellStyle BackColor="#FFFDF8" />
             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
</asp:Content>

