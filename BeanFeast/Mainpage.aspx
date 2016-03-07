<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="BeanFeast.Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color:#1E90FF;">
    <div class="auto-style1">
    
        <strong style="color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOM&nbsp;&nbsp;
        <asp:Label ID="welcomeLbl" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logoutBtn" runat="server" OnClick="logoutBtn_Click" Text="LOGOUT" />
            
            <asp:TextBox ID="searchTxt" runat="server" style="margin-left: 325px" Width="194px" ></asp:TextBox>
        <asp:Button ID="searchBtn" Text="Search" runat="server" OnClick="searchBtn_Click"  />
        <br />
        
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1351px" EmptyDataText="No Result Found!!" AutoGenerateColumns="False" DataKeyNames="Id" style="margin-right: 0px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          
            <Columns>
                <%--<asp:TemplateField HeaderText="id">
                    <ItemTemplate>
                        <asp:Label ID="lb1" runat="server" Text='<%#Eval("Id") %>'>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField>
                    <ItemTemplate>
                       <asp:Image ID="clubImg" runat="server" ImageUrl='<%#Eval("Image") %>' Height="100" Width="100"  />
                    </ItemTemplate>
                    <ItemStyle Wrap="False" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="clubnameLbl" runat="server" Text='<%#Eval("ClubName") %>'>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="placeLbl" runat="server" Text='<%#Eval("Place") %>'>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField >
                    <ItemTemplate>
                        <asp:Label ID="rateLbl" runat="server" Text='<%#Eval("Rate") %>'>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField >
                    <ItemTemplate>
                      <%-- <asp:Button ID="bookBtn" runat="server" Text="Book" Height="30" Width="80" OnClick="bookBtn_Click" />--%>
                        <asp:LinkButton ID="bookLink" runat="server" Text="Book" PostBackUrl='<%# "~/Booking.aspx?RowIndex=" + Container.DataItemIndex %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />


        </asp:GridView>
        </strong></div>
        <asp:SqlDataSource ID="SqlDataSourceClubData" runat="server" ConnectionString="<%$ ConnectionStrings:BeanFeastDBConnectionString %>" SelectCommand="SELECT * FROM [ClubData]"></asp:SqlDataSource>
    </form>
</body>
</html>
