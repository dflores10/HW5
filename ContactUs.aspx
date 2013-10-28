<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="CU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

      <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
         <div id="container">
        <div id="header">

            <h1>Wicked Easy Recipes</h1>
            <h2>Using 5 Ingredients or Less!</h2>

        </div>

        <div id="menu">
            <ul id="menulist">
                <li><a href="./Default.aspx">Home</a></li>
                <li><a href="./NRecipe.aspx">New Recipe</a></li>
                <li><a href="./AboutUs.aspx">About Us</a></li>
                <li><a href="./ContactUs.aspx">Contact</a></li>
            </ul>

        </div>

        <div id="main">
               <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
        </div>
        <div id="footer">

            &copy 2013. 6K:183 Software Design & Development

        </div>
    </div>

    </form>
</body>
</html>
