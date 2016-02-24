<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="BeanFeast.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 303px;
        }
        .auto-style7 {
            width: 155px;
        }
        .auto-style8 {
            width: 155px;
            height: 25px;
        }
        .auto-style9 {
            width: 303px;
            height: 25px;
        }
        .auto-style10 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style7">Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTxt" EnableClientScript="False" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Email</td>
            <td class="auto-style6">
                <asp:TextBox ID="emailTxt" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTxt" EnableClientScript="False" ErrorMessage="enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Phone number</td>
            <td class="auto-style6">
                <asp:TextBox ID="phoneTxt" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter a phone number" ControlToValidate="phoneTxt" EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style7">State</td>
            <td class="auto-style6">
                <asp:DropDownList ID="stateList" runat="server">
                    <asp:ListItem>select state</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                </asp:DropDownList>
             </td>
            <td>
                <asp:Label ID="stateLbl" runat="server"></asp:Label>
             </td>
        </tr> <tr>
            <td class="auto-style8">Gender</td>
            <td class="auto-style9">
                <asp:RadioButton ID="maleRbtn" runat="server" GroupName="gender" Text="Male" />
                <asp:RadioButton ID="femaleRbtn" runat="server" GroupName="gender" Text="Female" />
            </td>
            <td class="auto-style10">
                <asp:Label ID="genderLbl" runat="server"></asp:Label>
            </td>
        </tr> <tr>
            <td class="auto-style7">Username</td>
            <td class="auto-style6">
                <asp:TextBox ID="usernameTxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="usernameTxt" EnableClientScript="False" ErrorMessage="enter a username"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style7">Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordTxt" EnableClientScript="False" ErrorMessage="enter a password"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style7">Confirm password</td>
            <td class="auto-style6">
                <asp:TextBox ID="cpasswordTxt" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTxt" ControlToValidate="cpasswordTxt" EnableClientScript="False" ErrorMessage="Password do not match"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cpasswordTxt" EnableClientScript="False" ErrorMessage="Password do not match"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style7">
                <asp:Label ID="dataLbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Button ID="createBtn" runat="server"  Text="Create" OnClick="createBtn_Click" />
            </td>
            <td>&nbsp;</td>
        </tr> <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr> <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
