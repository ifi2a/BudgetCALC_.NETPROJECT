<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BudgetSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Budget Spring 2015</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 84%;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            width: 183px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 183px;
            height: 20px;
        }
        .auto-style6 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <img src="Images/Money3.jpg" /><h1 aria-disabled="False" style="width: 857px">$$ budget $$</h1>
    &nbsp;<div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblFirst" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="entry"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblLast" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="entry"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Required" ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblIncome" runat="server" Text="Income"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtIncome" runat="server" CssClass="entry"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblItemizedExpenses" runat="server" Text="Itemized Expenses"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblRent" runat="server" Text="Housing/Rent" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtHousing" runat="server" CssClass="entry"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblFood" runat="server" Text="Food" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFood" runat="server" CssClass="entry"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblClothing" runat="server" Text="Clothing"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtClothing" runat="server" CssClass="entry"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblTransportation" runat="server" Text="Transportation"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTransportation" runat="server" CssClass="entry"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblFun" runat="server" Text="Fun"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFun" runat="server" CssClass="entry"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblExpenses" runat="server" Text="Total Expenses"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblTotalExpenses" runat="server" Text="lblTotalExpenses" CssClass="result"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblSavings" runat="server" Text="Total Savings"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lblTotalSavings" runat="server" Text="lblTotalExpenses" CssClass="result"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" CssClass="button" OnClick="btnCalculate_Click1" />
                    <asp:Button ID="btnSummaryPage" runat="server" Text="Summary Page" PostBackUrl="~/BudgetSummary.aspx" CssClass="button" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CausesValidation="false" CssClass="button" OnClick="btnClear_Click1"/>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label1" runat="server" ForeColor="#00CC00" Text="Be sure to click Calculate Button before you click Summary Page Button"></asp:Label>
    </form>
</body>
</html>
