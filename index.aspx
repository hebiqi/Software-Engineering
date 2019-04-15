<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="top-grid">
        <div class="grid-title"><h3>最新货源信息</h3><a class="" href="freightList.aspx"><span>更多></span></a></div>
        <asp:GridView ID="gvFreight" runat="server" Width="80%" AutoGenerateColumns="False" CssClass="grid" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Start" HeaderText="出发地" />
                <asp:BoundField DataField="Terminal" HeaderText="到达地" />
                <asp:BoundField DataField="FreightType" HeaderText="货物种类" />
                <asp:TemplateField HeaderText="重量">
                    <ItemTemplate>
                        <%#Eval("ID")%>
                        <%#Eval("ID")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="FBDate" DataFormatString="{0:yy-MM-dd}" HeaderText="发布日期"
                    HtmlEncode="False" />
                <asp:TemplateField HeaderText="详细信息">
                    <ItemTemplate>
                        <a href="freightInfo.aspx?ID=<%#Eval("ID")%>">详细信息</a>
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
    <div class="top-grid">
        <div class="grid-title"><h3>最新车源信息</h3><a class="" href="truckList.aspx"><span>更多></span></a></div>
        <asp:GridView ID="gvTruck" runat="server" Width="80%" AutoGenerateColumns="False" CssClass="grid" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#EC005F" Font-Bold="True" ForeColor="White" Height="30px"/>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <div class="top-grid">
        <div class="grid-title"><h3>最新专线信息</h3><a class="" href="specialList.aspx"><span>更多></span></a></div>
        <asp:GridView ID="gvSpecial" runat="server" Width="80%" AutoGenerateColumns="False" CssClass="grid" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="start" HeaderText="出发地" />
                <asp:BoundField DataField="Terminal" HeaderText="到达地" />
                <asp:BoundField DataField="TruckType" HeaderText="车型" />
                <asp:BoundField DataField="specialPrice" HeaderText="专线报价" />
                <asp:BoundField DataField="FBDate" DataFormatString="{0:yy-MM-dd}" HeaderText="发布时间"
                    HtmlEncode="False" />
                <asp:TemplateField HeaderText="详细信息">
                    <ItemTemplate>
                        <a href="specialInfo.aspx?ID=<%#Eval("ID")%>">详细信息</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#EC005F" Font-Bold="True" ForeColor="White" Height="30px"/>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <div class="top-grid">
        <div class="grid-title"><h3>最新仓库信息</h3><a class="" href="depotList.aspx"><span>更多></span></a></div>
        <asp:GridView ID="gvDepot" runat="server" AutoGenerateColumns="False" Width="80%" CssClass="grid" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>                                            
                <asp:BoundField DataField="DepotType" HeaderText="仓库类型" />
                <asp:BoundField DataField="DepotCity" HeaderText="所在城市" />
                <asp:BoundField DataField="DepotAcreage" HeaderText="仓库面积" />
                <asp:BoundField DataField="DepotPrice" HeaderText="每间价格" />
                <asp:BoundField DataField="FBDate" DataFormatString="{0:yy-MM-dd}" HeaderText="发布时间"
                    HtmlEncode="False" />
                <asp:TemplateField HeaderText="详细信息">
                    <ItemTemplate>
                                                   
                        <a href="depotInfo.aspx?ID=<%#Eval("ID")%>">详细信息</a>
                                                       
                        </ItemTemplate>
                </asp:TemplateField>
                                             
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#EC005F" Font-Bold="True" ForeColor="White" Height="30px"/>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
</asp:Content>

