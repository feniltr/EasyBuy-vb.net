<%@ Page Title="" Language="VB" MasterPageFile="~/mstuser.master" AutoEventWireup="false" CodeFile="delivery.aspx.vb" Inherits="delivery" %>

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

        .style7
        {
            width: 100%;
        }

        .style6
        {
            width: 144px;
        }
    </style>
    <link href="App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;<asp:Label ID="Label4" runat="server" Text="Your Orders" 
            style="font-size: 30px; font-weight: bold; color: #333;" 
            Font-Size="X-Large"></asp:Label>

    </p>
    <table class="style7">
        <tr>
            <td valign="middle">
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
                        <td align="center" valign="middle" class="style6">
                            <asp:Label ID="lblitemprice" runat="server" BackColor="White" Font-Bold="True" 
                                Font-Size="Medium" Text='<%# Eval("watch_price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle">
                            &nbsp;&nbsp; Order Date :&nbsp;</td>
                        <td align="center" valign="middle" class="style6">
                        <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="True" 
                            Font-Size="Medium" Text='<%# Eval("order_date", "{0:dd-MM-yyyy}") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle">
                            &nbsp;&nbsp; Status :&nbsp;</td>
                        <td align="center" valign="middle" class="style6">
                            <asp:Label ID="Label2" runat="server" BackColor="White" Font-Bold="True" 
                                Font-Size="Medium" Text='<%# Eval("status") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" valign="middle">
                           <asp:Button ID="btncancel" runat="server" BorderColor="Black" 
                                            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="Small" 
                                            onclick="btncancel_Click" Text="Cancel order" CssClass="button-23" 
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

