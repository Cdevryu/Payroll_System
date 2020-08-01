using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmSalaryCalculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BTNCalculateSalary_Click(object sender, EventArgs e)
    {
        //Get the value of Annual Hours from the textbox and convert into a string
        string strAnnualHours = txtAnnualHours.Text;

        //Convert the string value of strAnnualHours into a double variable
        double AnnualHours = Convert.ToDouble(strAnnualHours);

        //Get the value of the hourly Rate from the textbox and convert it into a string
        string strRate = txtRate.Text;

        //Convert the string value of strRate into a double variable
        double Rate = Convert.ToDouble(strRate);

        //Find the AnnualSalary by multiplying the AnnualHours and hourly Rate
        double AnnualSalary = AnnualHours * Rate;

        //Displaying the Annual Salary        
        lblSalary.Text = "Annual Salary is " + AnnualSalary.ToString("C"); 

    }
}
