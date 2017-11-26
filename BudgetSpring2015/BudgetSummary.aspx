<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BudgetSummary.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Budget Summary Spring 2015</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 195px;
        }
        .auto-style3 {
            width: 195px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>
    <img src="Images/Money3.jpg" />
</head>
<body>
    <h1>Buddget Summary<form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblBudgetSavings" runat="server" Text="Your Budget savigs:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:Label ID="lblTotalSavings" runat="server" Text="lblTotalSavings"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblFirstNames" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblFirstName" runat="server" Text="lblFirstName"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblLastNames" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblLastName" runat="server" Text="lblLastName"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" CssClass="validator" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnSendInvestmentOptions" runat="server" Text="Send Investment Options" />
                <asp:Button ID="btnReturn" runat="server" CssClass="button" PostBackUrl="~/Default.aspx" Text="Return" />
            </td>
        </tr>
    </table>
        &nbsp;<div>
    
    </div>
    </form>
</body>
</html>
