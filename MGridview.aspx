<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MGridview.aspx.vb" Inherits="MGridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Wicked Easy Recipes.mdb" SelectCommand="SELECT [Message], [EmailAddress] FROM [Messages]"></asp:AccessDataSource>
    <div>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="EmailAddress" HeaderText="Your Email Address:" SortExpression="EmailAddress" />
                <asp:BoundField DataField="Message" HeaderText="Your Message:" SortExpression="Message" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
