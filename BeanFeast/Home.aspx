<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BeanFeast.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style19 {
        width: 186px;
        height: 52px;
    }
    .auto-style20 {
        width: 223px;
        height: 52px;
    }
    .auto-style21 {
        height: 52px;
    }
    .auto-style25 {
        width: 186px;
        height: 15px;
    }
    .auto-style26 {
        width: 223px;
        height: 15px;
    }
    .auto-style27 {
        height: 15px;
    }
    .auto-style28 {
        width: 186px;
        height: 48px;
    }
    .auto-style29 {
        width: 223px;
        height: 48px;
    }
    .auto-style30 {
        height: 48px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border: medium solid #FFFFFF; width:100%; background-color:#1E90FF;">
    <tr>
        <td class="auto-style28" style="color: #FFFFFF; font-family: forte; font-size: x-large; font-weight: normal;">UserName</td>
        <td class="auto-style29">
            <asp:TextBox ID="usernameTxt" runat="server" Width="128px"></asp:TextBox>
        </td>
        <td class="auto-style30"></td>
    </tr>
    <tr>
        <td class="auto-style25" style="color: #FFFFFF; font-family: Forte; font-size: x-large; font-weight: normal;">Password</td>
        <td class="auto-style26">
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" Width="128px"></asp:TextBox>
        </td>
        <td class="auto-style27"></td>
    </tr>
    <tr>
        <td class="auto-style19">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="auto-style20">
            <asp:Button ID="loginBtb" runat="server" Text="LOGIN" OnClick="loginBtb_Click" BackColor="#3399FF" BorderColor="White" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="31px" Width="72px" Font-Names="	Tahoma " />
        </td>
        <td class="auto-style21">&nbsp;</td>
    </tr>
        <tr>
            <td></td>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Signup.aspx" Font-Italic="False" ForeColor="White" Font-Names="forte">Create account</asp:HyperLink>
            </td>
            <td></td>
        </tr>
</table>
</asp:Content>
