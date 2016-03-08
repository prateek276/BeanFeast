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
    <table style="width:100%; background-color:white; border: medium solid #0099FF; width:100%; ">
        <tr>
            <td class="auto-style12" style="color: #0099FF;">Name</td>
            <td class="auto-style11" style="color: #0099FF; ">
                <asp:TextBox ID="nameTxt" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style13" style="color: #0099FF; ">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTxt" EnableClientScript="False" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="color: #0099FF;">Email</td>
            <td class="auto-style11" style="color: #0099FF; ">
                <asp:TextBox ID="emailTxt" runat="server" TextMode="Email" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style13" style="color: #0099FF; ">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTxt" EnableClientScript="False" ErrorMessage="enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="color: #0099FF;">Phone number</td>
            <td class="auto-style11" style="color: #0099FF; ">
                <asp:TextBox ID="phoneTxt" runat="server" TextMode="Phone" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style13" style="color: #0099FF; ">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter a phone number" ControlToValidate="phoneTxt" EnableClientScript="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="color: #0099FF;">Date of Birth</td>
            <td class="auto-style11" style="color: #0099FF; ">
                <asp:TextBox ID="DOBtxt" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td style="color: #0099FF" class="auto-style13">
                Age must be greater than 18 years</td>
        </tr>
         <tr>
            <td class="auto-style12" style="color: #0099FF;">State</td>
            <td class="auto-style11" style="color: #0099FF; ">
                <asp:DropDownList ID="stateList" runat="server" ForeColor="#0099FF">
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
            <td class="auto-style13" style="color: #0099FF; ">
                <asp:Label ID="stateLbl" runat="server"></asp:Label>
             </td>
        </tr> <tr>
            <td class="auto-style12" style="color: #0099FF;">Gender</td>
            <td class="auto-style9" style="color: #0099FF; ">
                <asp:RadioButton ID="maleRbtn" runat="server" GroupName="gender" Text="Male" Font-Names="Times New Roman" ForeColor="#0099FF" />
                <asp:RadioButton ID="femaleRbtn" runat="server" GroupName="gender" Text="Female" Font-Names="Times New Roman" ForeColor="#0099FF" />
            </td>
            <td class="auto-style10" style="color: #0099FF; ">
                <asp:Label ID="genderLbl" runat="server"></asp:Label>
            </td>
        </tr> <tr>
            <td class="auto-style12" style="color: #0099FF;">Username</td>
            <td class="auto-style11" style="color: #0099FF; ">
                <asp:TextBox ID="usernameTxt" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style13" style="color: #0099FF; ">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="usernameTxt" EnableClientScript="False" ErrorMessage="enter a username"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style12" style="color: #0099FF;">Password</td>
            <td class="auto-style11" style="color: #0099FF; ">
                <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style13" style="color: #0099FF; ">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordTxt" EnableClientScript="False" ErrorMessage="enter a password"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style12" style="color: #0099FF;">Confirm password</td>
            <td class="auto-style11" style="color: #0099FF; ">
                <asp:TextBox ID="cpasswordTxt" runat="server" TextMode="Password" BorderColor="#CCCCCC" BorderStyle="Solid"></asp:TextBox>
            </td>
            <td class="auto-style13" style="color: #0099FF; ">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTxt" ControlToValidate="cpasswordTxt" EnableClientScript="False" ErrorMessage="Password do not match"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cpasswordTxt" EnableClientScript="False" ErrorMessage="Password do not match"></asp:RequiredFieldValidator>
            </td>
        </tr> <tr>
            <td class="auto-style14" style="color: #0099FF; ">
                <asp:Label ID="dataLbl" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
            <td class="auto-style15" style="color: #0099FF; ">
                &nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#0099FF" ForeColor="White" Height="28px" OnClick="Button1_Click" Text="Back" Width="75px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="createBtn" runat="server"  Text="Create" OnClick="createBtn_Click" BackColor="#3399FF" BorderColor="White" Font-Bold="True" Font-Names="tahoma" Font-Size="Small" ForeColor="White" Height="31px" Width="72px" />
            </td>
            <td class="auto-style16" style="color: #0099FF; "></td>
        </tr> 
    </table>
</asp:Content>
