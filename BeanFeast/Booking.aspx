<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="BeanFeast.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 255px;
        }
        .auto-style3 {
            height: 23px;
            width: 255px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">Club Name</td>
                <td>
                    <asp:Label ID="clubnameLbl" runat="server"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style3">Place</td>
                <td class="auto-style1">
                    <asp:Label ID="placeLbl" runat="server"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">Rate</td>
                <td>
                    <asp:Label ID="rateLbl" runat="server"></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="booknowBtn" runat="server" Text="Book Now" Width="114px" />
                </td>
               
            </tr>

        </table>
    
    </div>
    </form>
</body>
</html>
