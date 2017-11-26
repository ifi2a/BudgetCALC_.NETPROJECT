using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BudgetSummary : System.Web.UI.Page
{
    Budget sessionBudget;
    protected void Page_Load(object sender, EventArgs e)
    {
        //turn off unobtrusive validation
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

         protected void btnClear_Click(object sender, EventArgs e)
    {

        txtFirstName.Text = "";
        txtLastName.Text = " ";
        txtIncome.Text = "";
        txtClothing.Text = "";
        txtFood.Text = "";
        txtFun.Text = "";
        txtHousing.Text = "";
        txtIncome.Text = "";
        txtTransportation.Text = "";

    }
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnCalculate_Click1(object sender, EventArgs e)
    {
        if (IsValid)
        {

            if (sessionBudget == null)
            {
                sessionBudget = new Budget();
            }
            sessionBudget.FirstName =
                txtFirstName.Text;
            sessionBudget.LastName =
                txtLastName.Text;
            sessionBudget.TotalSavings =
                lblTotalSavings.Text;

            Session["Budget"] = sessionBudget;

            //Response.Redirect("BudgetSummary.aspx");






            int income = Convert.ToInt32(txtIncome.Text);
            double housing = Convert.ToInt32(txtHousing.Text);
            double food = Convert.ToInt32(txtFood.Text);
            double clothing = Convert.ToInt32(txtClothing.Text);
            double transportation = Convert.ToInt32(txtTransportation.Text);
            double fun = Convert.ToInt32(txtFun.Text);

            double TotalExpenses = this.CalculateTotalExpenses(housing, food, clothing, transportation, fun);
            lblTotalExpenses.Text = TotalExpenses.ToString("c");
            double TotalSavings = this.CalculateTotalSavings(income, housing, food, clothing, transportation, fun);
            lblTotalSavings.Text = TotalSavings.ToString("c");

        }
    }

    protected double CalculateTotalExpenses(double housing, double food, double clothing, double transportation, double fun)
    {
        double TotalExpenses = housing + food + clothing + transportation + fun;
        return TotalExpenses;


    }

    protected double CalculateTotalSavings(double income, double housing, double food, double clothing, double transportation, double fun)
    {
        double TotalSavings = income - housing - food - clothing - transportation - fun; ;

        return TotalSavings;

    }


    protected void btnSummaryPage_Click(object sender, EventArgs e)
    {
        if (sessionBudget == null)
        {
            sessionBudget = new Budget();
        }
        sessionBudget.FirstName =
            txtFirstName.Text;
        sessionBudget.LastName =
            txtLastName.Text;
        sessionBudget.TotalSavings =
            lblTotalSavings.Text;

        Session["Budget"] = sessionBudget;

        Response.Redirect("BudgetSummary.aspx");

    }
    protected void btnClear_Click1(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = " ";
        txtIncome.Text = "";
        txtClothing.Text = "";
        txtFood.Text = "";
        txtFun.Text = "";
        txtHousing.Text = "";
        txtIncome.Text = "";
        txtTransportation.Text = "";
    }
}