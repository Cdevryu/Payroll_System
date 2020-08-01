using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmPersonnel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

       if (ValidateFields()) //if Validate fields method has returned true
        {
            //Add all text boxes values to the session object.

            //Add First Name to Session Object
            Session.Add("FirstName", txtFirstName.Text);
            //Add Last Name to Session Object
            Session.Add("LastName", txtLastName.Text);
            //Add Pay Rate to Session Object
            Session.Add("PayRate", txtPayRate.Text);
            //Add Start Date to Session Object 
            Session.Add("StartDate", txtStartDate.Text);
            //Add End Date to Session Object
            Session.Add("EndDate", txtEndDate.Text);
            //Redirect to frmPersonnelVerified page
            Server.Transfer("frmPersonnelVerified.aspx"); 
        }

    }

    //Validate all the fields and return either true or false based on results
     protected bool ValidateFields()
    {
        //Rest all text box colors to White.  Clear all values in lblError fields
        txtFirstName.BackColor = System.Drawing.Color.White;
        txtLastName.BackColor = System.Drawing.Color.White;
        txtPayRate.BackColor = System.Drawing.Color.White;
        txtStartDate.BackColor = System.Drawing.Color.White;
        txtEndDate.BackColor = System.Drawing.Color.White;
        lblError6.Text = "";

        bool isValidated = true;

        //Validate text box statements. Supply an error message for any box that is empty and set the color to Yellow.
        
        //Validate First Name
        if (txtFirstName.Text.Length == 0)
        {
            lblError1.Text += "First Name field cannot be empty.";
            txtFirstName.BackColor = System.Drawing.Color.Yellow;
            isValidated = false;
         }

        //Validate Last Name
        if (txtLastName.Text.Trim() == "")
        {
            lblError2.Text += "Last Name field cannot be empty.";
            txtLastName.BackColor = System.Drawing.Color.Yellow;
            isValidated = false;
        }

        //Validate Pay Rate
        if (txtPayRate.Text.Trim() == "")
        {
            lblError3.Text += "Pay Rate field cannot be empty.";
            txtPayRate.BackColor = System.Drawing.Color.Yellow;
            isValidated = false;
        }

        //Validate Start Date
        if (txtStartDate.Text.Trim() == "")
        {
            lblError4.Text += "Start Date field cannot be empty.";
            txtStartDate.BackColor = System.Drawing.Color.Yellow;
            isValidated = false;
        }

        //Validate End Date
        if (txtEndDate.Text.Trim() == "")
        {
            lblError5.Text += "End Date field cannot be empty.";
            txtEndDate.BackColor = System.Drawing.Color.Yellow;
            isValidated = false;
        }

        //Validate the start and end date boxes. Check to make sure start date is before the end date.
        if (isValidated)
        {
            //Store StartDate.Text to a string
            string strStartDate = txtStartDate.Text;
            //Store EndDate.Text to a string
            string strEndDate = txtEndDate.Text;
            //Convert startDate to DateTime Object
            DateTime startDateTime = DateTime.Parse(strStartDate);
            //Convert endDate to DateTime Object
            DateTime endDateTime = DateTime.Parse(strEndDate);    

            //If startDate is greater than endDate, display error message.  Change text box color to Yellow and set the function variable to false.
            if (DateTime.Compare(startDateTime, endDateTime) > 0)   //if startDate is greater than End Date
            {
                lblError6.Text += "Start Date must be less than the End Date. "; 
                txtStartDate.BackColor = System.Drawing.Color.Yellow;           
                txtEndDate.BackColor = System.Drawing.Color.Yellow;             
                isValidated = false;                                           

            }
        }
        return isValidated;

    }
}
