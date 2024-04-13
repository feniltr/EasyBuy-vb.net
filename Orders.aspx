<%@ Page Title="" Language="VB" MasterPageFile="~/mspadmin.master" AutoEventWireup="false" CodeFile="Orders.aspx.vb" Inherits="Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style7">
        <tr>
            <td align="center">
                <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" Width="871px" Margin="10px" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="user_name" HeaderText="Username" />
                        <asp:BoundField DataField="product_id" HeaderText="Product id" />
                        <asp:BoundField DataField="watch_name" HeaderText="Watch name" />
                        <asp:BoundField DataField="watch_category" HeaderText="Watch category" />
                        <asp:BoundField DataField="watch_price" HeaderText="Total" />
                        <asp:BoundField DataField="order_date" HeaderText="Order date" DataFormatString="{0:dd-MM-yyyy}"/>
                        <asp:BoundField DataField="address" HeaderText="Address" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

