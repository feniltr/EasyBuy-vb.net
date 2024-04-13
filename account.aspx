<%@ Page Title="" Language="VB" MasterPageFile="~/mstuser.master" AutoEventWireup="false" CodeFile="account.aspx.vb" Inherits="account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            height: 26px;
        }
    </style>
    <link href="App_Themes/profile.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style6">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Your Details" 
            style="font-size: 30px; font-weight: bold; color: #333;" Font-Size="X-Large"></asp:Label>

            </td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FormView ID="fv" runat="server">
    <ItemTemplate>
        <div class="user-profile">
            <div class="profile-item">
                <span class="label">Email:</span>
                <span class="value"><asp:Label ID="Label4" runat="server" Text='<%# Eval("email") %>'></asp:Label></span>
            </div>
            <div class="profile-item">
                <span class="label">Username:</span>
                <span class="value"><asp:Label ID="Label5" runat="server" Text='<%# Eval("username") %>'></asp:Label></span>
            </div>
            <div class="profile-item">
                <span class="label">Address:</span>
                <span class="value"><asp:Label ID="Label6" runat="server" Text='<%# Eval("address") %>'></asp:Label></span>
            </div>
            <div class="profile-item">
                <span class="label">Gender:</span>
                <span class="value"><asp:Label ID="Label7" runat="server" Text='<%# Eval("gender") %>'></asp:Label></span>
            </div>
        </div>
    </ItemTemplate>
</asp:FormView>

                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

