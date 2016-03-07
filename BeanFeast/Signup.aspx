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
            width: 206px;
            height: 25px;
        }
        .auto-style10 {
            height: 25px;
        width: 256px;
    }
    .auto-style11 {
        width: 206px;
        height: 30px;
    }
    .auto-style12 {
            width: 155px;
            height: 30px;
        }
    .auto-style13 {
        width: 256px;
    }
    .auto-style14 {
        width: 155px;
        height: 18px;
    }
    .auto-style15 {
        width: 206px;
        height: 18px;
    }
    .auto-style16 {
        height: 18px;
        width: 256px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; background-color:lightblue; border: medium solid #FFFFFF; width:100%; background-color:#1E90FF;">
        <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">Name</td>
            <td class="auto-style11">
                <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTxt" EnableClientScript="False" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">Email</td>
            <td class="auto-style11">
                <asp:TextBox ID="emailTxt" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTxt" EnableClientScript="False" ErrorMessage="enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">Phone number</td>
            <td class="auto-style11">
                <asp:TextBox ID="phoneTxt" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter a phone number" ControlToValidate="phoneTxt" EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">Date of Birth</td>
            <td class="auto-style11">
                <asp:TextBox ID="DOBtxt" runat="server"></asp:TextBox>
            </td>
            <td style="font-family: forte; color: #FFFFFF" class="auto-style13">
                Age must be greater than 18 years</td>
        </tr>
         <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">State</td>
            <td class="auto-style11">
                <asp:DropDownList ID="stateList" runat="server">
                    <asp:ListItem>Select state</asp:ListItem>
                    <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chandigarh</asp:ListItem>
                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                    <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
                    <asp:ListItem>Daman and Diu</asp:ListItem>
                    <asp:ListItem>Delhi NCR</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Lakshadweep</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Odisha</asp:ListItem>
                    <asp:ListItem>Puducherry</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                </asp:DropDownList>
             </td>
            <td class="auto-style13">
                <asp:Label ID="stateLbl" runat="server"></asp:Label>
             </td>
        </tr> <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">Gender</td>
            <td class="auto-style9">
                <asp:RadioButton ID="maleRbtn" runat="server" GroupName="gender" Text="Male" Font-Names="forte" ForeColor="White" />
                <asp:RadioButton ID="femaleRbtn" runat="server" GroupName="gender" Text="Female" Font-Names="forte" ForeColor="White" />
            </td>
            <td class="auto-style10">
                <asp:Label ID="genderLbl" runat="server"></asp:Label>
            </td>
        </tr> <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">Username</td>
            <td class="auto-style11">
                <asp:TextBox ID="usernameTxt" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="usernameTxt" EnableClientScript="False" ErrorMessage="enter a username"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">Password</td>
            <td class="auto-style11">
                <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordTxt" EnableClientScript="False" ErrorMessage="enter a password"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style12" style="font-family: forte; color: #FFFFFF;">Confirm password</td>
            <td class="auto-style11">
                <asp:TextBox ID="cpasswordTxt" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTxt" ControlToValidate="cpasswordTxt" EnableClientScript="False" ErrorMessage="Password do not match"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cpasswordTxt" EnableClientScript="False" ErrorMessage="Password do not match"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style14">
                <asp:Label ID="dataLbl" runat="server"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:Button ID="createBtn" runat="server"  Text="Create" OnClick="createBtn_Click" BackColor="#3399FF" BorderColor="White" Font-Bold="True" Font-Names="tahoma" Font-Size="Small" ForeColor="White" Height="31px" Width="72px" />
            </td>
            <td class="auto-style16"></td>
        </tr> 
    </table>
</asp:Content>
