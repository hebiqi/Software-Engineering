<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="truckList.aspx.cs" Inherits="truckList" Title="Untitled Page" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="top-grid">
        <div class="grid-title"><h3>车源信息</h3></div>
        <asp:GridView ID="gvTruck" runat="server" AutoGenerateColumns="False" Width="80%" AllowPaging="True" OnPageIndexChanging="gvTruck_PageIndexChanging" CssClass="grid" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="start" HeaderText="出发地" />
                <asp:BoundField DataField="Terminal" HeaderText="到达地" />
                <asp:BoundField DataField="TruckType" HeaderText="车型" />
                <asp:BoundField DataField="TruckLoad" HeaderText="载重" />
                <asp:BoundField DataField="FBDate" DataFormatString="{0:yy-MM-dd}" HeaderText="发布日期"
                    HtmlEncode="False" />
                <asp:TemplateField HeaderText="详细信息">
                    <ItemTemplate>
                        <a href="truckInfo.aspx?ID=<%#Eval("ID")%>">详细信息</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#EC005F" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#EC005F" Font-Bold="True" ForeColor="White" Height="30px" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="20px" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
  </div>
</asp:Content>

