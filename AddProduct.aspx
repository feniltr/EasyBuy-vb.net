<%@ Page Title="" Language="VB" MasterPageFile="~/mspadmin.master" AutoEventWireup="false" CodeFile="AddProduct.aspx.vb" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        
    }
    .style7
    {
        width: 707px;
        text-align: center;
    }
    .style8
    {
        height: 61px;
        text-align: left;
        width: 707px;
    }
    .style9
    {
        width: 707px;
        text-align: center;
        height: 115px;
    }
    .style10
    {
        height: 115px;
    }
    .style11
    {
        width: 100%;
    }
</style>
    <link href="App_Themes/add.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
    <td class="style9">
        <strong>Watch Name</strong>
    </td>
    <td class="style10">
        <asp:TextBox ID="txtwname" runat="server" CssClass="input-text"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtwname" ErrorMessage="*Enter Watch Name" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td class="style7">
        <strong>Watch Price</strong>
    </td>
    <td>
        <asp:TextBox ID="txtwprice" runat="server" CssClass="input-text" Width="155px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtwname" ErrorMessage="*Enter Watch Price" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td class="style7">
        <strong>Category</strong>
    </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select">
            <asp:ListItem>SmartWatch</asp:ListItem>
            <asp:ListItem>AnalogWatch</asp:ListItem>
            <asp:ListItem>SportWatch</asp:ListItem>
            <asp:ListItem>WallClock</asp:ListItem>
            <asp:ListItem>MechanicalWatch</asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr>
    <td class="style7">
        <strong>Image</strong>
    </td>
    <td>
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload" />
    </td>
</tr>

    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnsave" runat="server" Text="ADD" />
        </td>
    </tr>
    <tr>
        <td class="style6" colspan="2" align="center" valign="middle">
            <table align="center" class="style11">
                <tr>
                    <td align="justify" valign="middle">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        watch category&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True">
                <asp:ListItem>SmartWatch</asp:ListItem>
                <asp:ListItem>AnalogWatch</asp:ListItem>
                <asp:ListItem>SportWatch</asp:ListItem>
                <asp:ListItem>WallClock</asp:ListItem>
                <asp:ListItem>MechanicalWatch</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp; Sort
            <asp:DropDownList ID="ddlsort" runat="server" AutoPostBack="True">
                <asp:ListItem>Budget</asp:ListItem>
                <asp:ListItem>Expensive</asp:ListItem>
            </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style6" colspan="2">
            &nbsp;<asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" ForeColor="#333333" GridLines="None" Height="205px" 
    Width="625px" Font-Size="Medium" HorizontalAlign="Center" 
    DataKeyNames="watch_id" SelectedIndex="1">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="watch_name" HeaderText="Watch Name" />
        <asp:BoundField DataField="watch_price" HeaderText="Watch Price" />
        <asp:BoundField DataField="watch_category" HeaderText="Watch category" />
        <asp:ImageField DataImageUrlField="watch_image" HeaderText="Image">
            <ControlStyle Height="100px" Width="100px" />
        </asp:ImageField>
        <asp:CommandField ShowEditButton="True" CausesValidation="False" />
        <asp:CommandField ShowDeleteButton="True" CausesValidation="False" />
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

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
</table>
</asp:Content>

