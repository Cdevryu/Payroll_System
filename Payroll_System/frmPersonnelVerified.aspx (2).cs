using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmPersonnelVerified : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Using the Properties panel, we have used PostBackUrl to link the hyperlink to the frmPersonnel.aspx page and give the page access controls.
        //Below code will initialize the text prperty after returning the input values from the text boxes
        txtVerifiedInfo.Text = Session["txtFirstName"].ToString() +
        "\n" + Session["txtLastName"].ToString() +
        "\n" + Session["txtPayRate"].ToString() +
        "\n" + Session["txtStartDate"].ToString() +
        "\n" + Session["txtEndDate"].ToString();

        //Check is recored was saved in the tblPersonnel Table. Display the appropriate message in the txtVerifiedInfo box
        if (clsDataLayer.SavePersonnel(Server.MapPath("PayrollSystem_DB.accdb"),
            Session["txtFirstName"].ToString(),
            Session["txtLastName"].ToString(),
            Session["txtPayRate"].ToString(),
            Session["txtStartDate"].ToString(),
            Session["txtEndDate"].ToString()))
        {
            txtVerifiedInfo.Text = txtVerifiedInfo.Text + "\nThe information was successfully saved!";
        }
        else
        {
            txtVerifiedInfo.Text = txtVerifiedInfo.Text + "\nThe information was NOT saved.";
        }
    }

}