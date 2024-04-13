<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            text-align: center;
            font-size: x-large;
            background-color: #336699;
        }
        .style4
        {
            text-align: center;
            font-size: large;
            height:80px;
            background-color: #86A8CF;
            
        }
        .style5
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
            width: 264px;
            height:80px;
            
        }
        .style6
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
            width: 264px;
            height:80px;
            font-family: "Times New Roman", Times, serif;
           
        }
        .style7
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style8
        {
            text-align: center;
            font-size: x-large;
            height: 43px;
            background-color: #336699;
        }
        .style9
        {
            height: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" style="height: 355px; width: 1074px">
            <tr>
                <td class="style8" colspan="2">
                    <asp:Image ID="Image3" runat="server" Height="100px" 
                        ImageUrl="~/image/y4xc6x7k.png" Width="100px" />
                    <br />
                    <span class="style7"><strong style="background-color: #336699; color: #FFFFFF;">Login</strong></span></td>
                <td class="style3" rowspan="5">
                    <asp:Image ID="Image5" runat="server" 
                        ImageUrl="~/image/Screenshot 2023-08-27 172955.png"  Height="620px"  
                        Width="450px"  ImageAlign="Middle" />
                    </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/image/user.jpeg.png"  Height="20px"  Width="20px"  ImageAlign="Middle" />
                    <strong style="color: #FFFFFF">&nbsp;&nbsp;&nbsp; Username</td>
                <td style="margin-left: 40px; background-color: #86A8CF;" class="style9">
                    <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                        ID="txtusername" runat="server" Font-Bold="False" Font-Size="Medium" 
                        TabIndex="1"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage=" *  Enter Username" 
                        Font-Bold="False" ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
                    <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                </td>
            </tr>
            <tr>
                <td class="style5"><span style="color: #FFFFFF"><strong>
                    <asp:Image ID="Image2" runat="server" ForeColor="White" Height="20px" 
                        ImageAlign="Middle" ImageUrl="~/image/padlock.png" Width="20px" />
                    &nbsp;&nbsp;&nbsp;&nbsp; Password </strong></span></td>
                <td style="margin-left: 40px; background-color: #86A8CF;">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style7">&nbsp;
                     <asp:TextBox ID="txtpassword" runat="server" Font-Bold="False" 
                         Font-Size="Medium" TextMode="Password" TabIndex="2"></asp:TextBox>
                     </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
                     &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         ControlToValidate="txtpassword" ErrorMessage="* Enter Password" 
                         Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td class="style4" colspan="2">
                    <asp:Button ID="btnlogin" runat="server" Font-Bold="True" Font-Size="Medium" 
                        Text="Login" BorderColor="Black" />
                &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" colspan="2">
    
        <asp:Label ID="lblmsg" runat="server" Text="    " ForeColor="Red"></asp:Label>
    
                    <br />
                    Not a uset ?
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Register </asp:HyperLink>
    
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>
