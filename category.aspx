<%@ Page Title="" Language="VB" MasterPageFile="~/mstuser.master" AutoEventWireup="false" CodeFile="category.aspx.vb" Inherits="category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

.button-23 {
  background-color: #FFFFFF;
  border: 1px solid #222222;
  border-radius: 8px;
  box-sizing: border-box;
  color: #222222;
  cursor: pointer;
  display: inline-block;
  font-family: Circular,-apple-system,BlinkMacSystemFont,Roboto,"Helvetica Neue",sans-serif;
  font-size: 16px;
  font-weight: 600;
  line-height: 20px;
  margin: 0;
  outline: none;
  padding: 13px 23px;
  position: relative;
  text-align: center;
  text-decoration: none;
  touch-action: manipulation;
  transition: box-shadow .2s,-ms-transform .1s,-webkit-transform .1s,transform .1s;
  user-select: none;
  -webkit-user-select: none;
  width: 169px;
    top: 0px;
    left: 2px;
    height: 49px;
}

.button-23 {
  background-color: #FFFFFF;
  border: 1px solid #222222;
  border-radius: 8px;
  box-sizing: border-box;
  color: #222222;
  cursor: pointer;
  display: inline-block;
  font-family: Circular,-apple-system,BlinkMacSystemFont,Roboto,"Helvetica Neue",sans-serif;
  font-size: 16px;
  font-weight: 600;
  line-height: 20px;
  margin: 0;
  outline: none;
  padding: 13px 23px;
  position: relative;
  text-align: center;
  text-decoration: none;
  touch-action: manipulation;
  transition: box-shadow .2s,-ms-transform .1s,-webkit-transform .1s,transform .1s;
  user-select: none;
  -webkit-user-select: none;
  width: 169px;
    top: 0px;
    left: 2px;
    height: 49px;
}

        .style6
        {
            width: 100%;
        }

    </style>
    <link href="App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td valign="middle">
                <asp:Label ID="Label4" runat="server" Text="Category" 
            style="font-size: 30px; font-weight: bold; color: #333;" Font-Size="X-Large"></asp:Label>

            </td>
        </tr>
        <tr>
            <td align="center" valign="middle">
        Select watch category&nbsp;&nbsp;&nbsp;
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
    <table class="style6">
        <tr>
            <td align="center" valign="middle">
        <asp:DataList ID="dl" runat="server" RepeatColumns="4" 
            RepeatDirection="Horizontal" Width="765px">
            <ItemTemplate>
                <table class="style9">
                    <tr align="center" bgcolor="#DBDBDB" valign="middle">
                        <td colspan="2">
                                        <br />
                                        <asp:Image ID="Image1" runat="server" Height="175px" 
                                ImageUrl='<%# Eval("watch_image") %>' Width="146px" />
                                        <br />
                                        <br />
                                    </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" valign="middle">
                            <asp:Label ID="lblitemname" runat="server" BackColor="White" Font-Bold="True" 
                                Font-Size="Medium" Text='<%# Eval("watch_name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle">
                            &nbsp;&nbsp; Price :&nbsp;</td>
                        <td align="center" valign="middle">
                            <asp:Label ID="lblitemprice" runat="server" BackColor="White" Font-Bold="True" 
                                Font-Size="Medium" Text='<%# Eval("watch_price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" valign="middle">
                           <asp:Button ID="btncart" runat="server" BorderColor="Black" 
                                            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="Small" 
                                            onclick="btncart_Click" Text="Add to cart" CssClass="button-23" 
                                            EnableTheming="True" 
                                CommandArgument='<%# Eval("watch_id") %>'/>

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

