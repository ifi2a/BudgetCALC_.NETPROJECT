using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Budget sessionBudget;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (Session["Budget"] != null)
        {
            sessionBudget = (Budget)Session["Budget"];



            lblFirstName.Text =
                sessionBudget.FirstName;
            lblLastName.Text =
                sessionBudget.LastName;
            lblTotalSavings.Text =
               sessionBudget.TotalSavings;
        }

    }
}