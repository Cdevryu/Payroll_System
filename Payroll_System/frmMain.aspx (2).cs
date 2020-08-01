using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // This statement will Save the current user activity to tblUserActivity table
        clsDataLayer.SaveUserActivity(Server.MapPath("PayrollSystem_DB.accdb"), "frmPersonnel");
    }
}