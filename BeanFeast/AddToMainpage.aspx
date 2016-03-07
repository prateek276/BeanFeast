<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToMainpage.aspx.cs" Inherits="BeanFeast.AddToMainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>Club Image</td>
                <td>
                    <asp:FileUpload ID="clubimageUpload" runat="server" />
                </td>
                
            </tr>
            <tr>
                <td>Club Name</td>
                <td>
                    <asp:TextBox ID="clubnameTxt" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>Place</td>
                <td>
                    <asp:TextBox ID="placeTxt" runat="server"></asp:TextBox>
                </td>
            
            </tr>
             <tr>
                <td>Rate</td>
                <td>
                    <asp:TextBox ID="rateTxt" runat="server"></asp:TextBox>
                 </td>
              
            </tr>
             <tr>
                <td>
                    <asp:Label ID="addtomainpageLbl" runat="server"></asp:Label>
                 </td>
                <td>
                    <asp:Button ID="saveBtn" runat="server" OnClick="saveBtn_Click" Text="SAVE" />
                 </td>
             
            </tr>
            
        </table>
    
    </div>
    </form>
</body>
</html>
