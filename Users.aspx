<%@ Page Title="" Language="VB" MasterPageFile="~/mspadmin.master" AutoEventWireup="false" CodeFile="Users.aspx.vb" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Height="205px" 
                Width="625px" Font-Size="Medium" HorizontalAlign="Center" 
                DataKeyNames="id" SelectedIndex="1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="username" HeaderText="Username" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="password" HeaderText="Password" />
            <asp:BoundField DataField="gender" HeaderText="Gender" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>

