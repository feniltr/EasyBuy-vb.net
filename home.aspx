<%@ Page Title="" Language="VB" MasterPageFile="~/mstuser.master" AutoEventWireup="false"  CodeFile="home.aspx.vb" Inherits="home" %>


<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        &nbsp;<asp:Label ID="Label4" runat="server" Text="Watches For You" 
            style="font-size: 30px; font-weight: bold; color: #333;" Font-Size="X-Large"></asp:Label>

    </p>
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
                                            EnableTheming="True" CommandArgument='<%# Eval("watch_id") %>'/>

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
            </td>
        </tr>
    </table>
    <p align="center">
        &nbsp;</p>
                            
</asp:Content>



<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <link href="App_Themes/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/aboutus.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
    </style>
</asp:Content>




