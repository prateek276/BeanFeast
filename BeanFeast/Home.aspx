<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BeanFeast.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style20 {
        width: 223px;
        height: 52px;
    }
    .auto-style21 {
        height: 52px;
    }
    .auto-style26 {
        width: 223px;
        height: 44px;
    }
    .auto-style27 {
        height: 44px;
    }
        .auto-style31 {
            width: 241px;
        }
        .auto-style33 {
            width: 241px;
            height: 44px;
        }
        .auto-style34 {
            width: 241px;
            height: 52px;
        }
        .auto-style35 {
            width: 241px;
            height: 65px;
        }
        .auto-style36 {
            width: 223px;
            height: 65px;
        }
        .auto-style37 {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border: medium solid #0099FF; width:100%; background-color:white;">
    <tr>
        <td class="auto-style35" style="color: #0099FF; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UserName</td>
        <td class="auto-style36">
            <asp:TextBox ID="usernameTxt" runat="server" Width="128px" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
        </td>
        <td class="auto-style37"></td>
    </tr>
    <tr>
        <td class="auto-style33" style="color: #0099FF; font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
        <td class="auto-style26">
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" Width="128px" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
        </td>
        <td class="auto-style27"></td>
    </tr>
    <tr>
        <td class="auto-style34">
            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
        <td class="auto-style20">
            <asp:Button ID="loginBtb" runat="server" Text="LOGIN" OnClick="loginBtb_Click" BackColor="#3399FF" BorderColor="White" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="31px" Width="72px" Font-Names="	Tahoma " />
        </td>
        <td class="auto-style21">&nbsp;</td>
    </tr>
        <tr>
            <td class="auto-style31"></td>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Signup.aspx" Font-Italic="False" ForeColor="#0099FF" Font-Names="Times New Roman">Create account</asp:HyperLink>
            </td>
            <td></td>
        </tr>
</table>
</asp:Content>
