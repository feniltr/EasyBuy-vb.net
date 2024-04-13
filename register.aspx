<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

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
        .style7
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style11
        {
            width: 100%;
            height: 38px;
        }
        .style12
        {
            height: 26px;
        }
        .style20
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
            width: 456px;
            height: 61px;
        }
        .style21
        {
            height: 61px;
            width: 384px;
        }
        .style23
        {
            text-align: center;
            font-size: large;
            height: 40px;
            background-color: #86A8CF;
        }
        .style24
        {
            text-align: center;
            font-size: x-large;
            height: 44px;
            background-color: #336699;
        }
        .style31
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
            width: 456px;
            height: 21px;
            font-family: "Times New Roman", Times, serif;
        }
        .style32
        {
            height: 21px;
            width: 384px;
        }
        .style33
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
            width: 456px;
            height: 17px;
        }
        .style34
        {
            height: 17px;
            width: 384px;
        }
        .style35
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
            width: 456px;
        }
        .style36
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
        }
        .style37
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
            width: 456px;
            height: 69px;
            font-family: "Times New Roman", Times, serif;
        }
        .style38
        {
            width: 384px;
        }
        .style39
        {
            text-align: center;
            font-size: large;
            background-color: #86A8CF;
            width: 456px;
            height: 10px;
            font-family: "Times New Roman", Times, serif;
        }
        .style40
        {
            height: 10px;
            width: 384px;
        }
        .style41
        {
            width: 384px;
            height: 69px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" style="height: 704px; width: 1132px" bgcolor="White">
            <tr>
                <td class="style24" colspan="2">
                    <asp:Image ID="Image3" runat="server" Height="100px" 
                        ImageUrl="~/image/register.png" Width="100px" />
                    <br />
                    <span class="style7"><strong style="background-color: #336699; color: #FFFFFF;">Register</strong></span></td>
                <td class="style3" rowspan="9">
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/image/Screenshot 2023-08-27 153409.png"  
                        Height="703px"  Width="498px"  ImageAlign="Middle" />
                    </td>
            </tr>
            <tr>
                <td class="style39" bgcolor="White" valign="middle">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/image/email.png"  
                        Height="26px"  Width="20px"  ImageAlign="Middle" />
                    <strong style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp; Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td style="margin-left: 40px; background-color: #86A8CF;" class="style40" 
                    bgcolor="White" valign="middle">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style7">
                    <asp:TextBox 
                        ID="txtemail" runat="server" Font-Bold="False" Font-Size="Medium" 
                        TextMode="Email" TabIndex="1" Width="174px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage=" *  Enter Email" 
                        Font-Bold="False" ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style37" bgcolor="White">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/image/user.jpeg.png"  Height="20px"  Width="20px"  ImageAlign="Middle" />
                    <strong style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp; Username&nbsp; </td>
                <td style="margin-left: 40px; background-color: #86A8CF;" class="style41" 
                    bgcolor="White">
                    <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                        ID="txtusername" runat="server" Font-Bold="False" Font-Size="Medium" 
                        TabIndex="2" Width="174px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <span class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage=" *  Enter Username" 
                        Font-Bold="False" ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
                </span>
                </td>
            </tr>
            <tr>
                <td class="style31" bgcolor="White">
                    <strong style="color: #FFFFFF">
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/image/home.png"  
                        Height="25px"  ImageAlign="Middle" />
                    &nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp; &nbsp; </td>
                <td style="margin-left: 40px; background-color: #86A8CF;" class="style32" 
                    bgcolor="White">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style7">
                    <asp:TextBox 
                        ID="txtaddress" runat="server" Font-Bold="False" Font-Size="Medium" 
                        TabIndex="2" Width="175px"></asp:TextBox>
                    </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtaddress" ErrorMessage=" *  Enter Address" 
                        Font-Bold="False" ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style33" bgcolor="White"><span style="color: #FFFFFF"><strong>
                    <asp:Image ID="Image2" runat="server" ForeColor="White" Height="20px" 
                        ImageAlign="Middle" ImageUrl="~/image/padlock.png" Width="20px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</strong></span></td>
                <td style="margin-left: 40px; background-color: #86A8CF;" class="style34" 
                    bgcolor="White">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style7">&nbsp;
                     <asp:TextBox ID="txtpassword" runat="server" Font-Bold="False" 
                         Font-Size="Medium" TextMode="Password" TabIndex="3" Width="174px"></asp:TextBox>
                     </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         ControlToValidate="txtpassword" ErrorMessage="* Enter Password" 
                         Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td class="style20" bgcolor="White">
                    <span style="color: #FFFFFF"><strong>
                    <asp:Image ID="Image10" runat="server" ForeColor="White" Height="20px" 
                        ImageAlign="Middle" ImageUrl="~/image/padlock.png" Width="20px" />
                    &nbsp;ConfirmPassword</strong></span></td>
                <td style="margin-left: 40px; background-color: #86A8CF;" class="style21" 
                    bgcolor="White">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span class="style7">
                     <asp:TextBox ID="txtcofirmpassword" runat="server" Font-Bold="False" 
                         Font-Size="Medium" TextMode="Password" TabIndex="4" Width="174px"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:CompareValidator ID="CompareValidator1" runat="server" 
                         ControlToCompare="txtpassword" ControlToValidate="txtcofirmpassword" 
                         ErrorMessage="*Passwords are not same" ForeColor="Red"></asp:CompareValidator>
                     </span>
                 </td>
            </tr>
            <tr>
                <td class="style35" bgcolor="White">
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/image/gender.png"  
                        Height="25px"  Width="50px"  ImageAlign="Middle" />
                    &nbsp;<strong style="color: #FFFFFF"> Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td style="margin-left: 40px; background-color: #86A8CF;" class="style38" 
                    bgcolor="White">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<table align="left" class="style11">
                         <tr>
                             <td class="style12">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:RadioButton ID="rdbmale" runat="server" Font-Bold="True" GroupName="g" 
                                     Text="Male" />
                                 &nbsp;<asp:RadioButton ID="rdbfemale" runat="server" Font-Bold="True" GroupName="g" 
                                     Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="msggender" runat="server" ForeColor="Red">             </asp:Label>
    
                             </td>
                         </tr>
                     </table>
                 </td>
            </tr>
            <tr>
                <td class="style23" colspan="2" bgcolor="White">
                    <asp:Button ID="btnregister" runat="server" Font-Bold="True" Font-Size="Medium" 
                        Text="Register" TabIndex="5" BorderColor="Black" Height="38px" />
                </td>
            </tr>
            <tr>
                <td class="style36" colspan="2" bgcolor="White">
    
        <asp:Label ID="lblmsg" runat="server" Text="   " ForeColor="Red"></asp:Label>
    
                    <br />
                    Already user ? 
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
    
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>
