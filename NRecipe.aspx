<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NRecipe.aspx.vb" Inherits="RDetailsView" %>

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
        

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Wicked Easy Recipes.mdb"
            DeleteCommand="DELETE FROM [Recipes] WHERE [RecipeID] = ?" 
            InsertCommand="INSERT INTO [Recipes] ([RecipeName], [Submitter], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Recipes] WHERE ([RecipeID] = ?)" 
            UpdateCommand="UPDATE [Recipes] SET [RecipeName] = ?, [Submitter] = ?, [Ingredient1] = ?, [Ingredient2] = ?, [Ingredient3] = ?, [Ingredient4] = ?, [Ingredient5] = ?, [Preparation] = ?, [Notes] = ? WHERE [RecipeID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="Submitter" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="RecipeID" QueryStringField="RecipeID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="Submitter" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:DetailsView 
            ID="DetailsView1" 
            runat="server" 
            AutoGenerateRows="False" 
            DataKeyNames="RecipeID" 
            DataSourceID="AccessDataSource1" 
            DefaultMode="Insert"
            CssClass="cssdetailsview"
            HeaderText="Enter New Recipe"
            HeaderStyle-CssClass="header"
            FieldHeaderStyle-CssClass="fieldheader" 
            ItemStyle-CssClass="item">
            <Fields>
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                <asp:BoundField DataField="Submitter" HeaderText="Submitted By" SortExpression="Submitter" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient #1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient #2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient #3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient #4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient #5" SortExpression="Ingredient5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        </div>
        <div id="footer">

            &copy 2013. 6K:183 Software Design & Development

        </div>
    </div>
    </form>
</body>
</html>
