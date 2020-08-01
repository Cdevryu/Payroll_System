using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
// Include namespaces to enable database access.
using System.Data.OleDb;
using System.Net;
using System.Data;
/// <summary>
/// Class will retrieve user activity information and store it in the tblUserActivity database table.
/// </summary>
public class clsDataLayer
{
    public clsDataLayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    // This function gets the user activity from the tblUserActivity
    public static dsUserActivity GetUserActivity(string Database)
    {
        //Create OLEDB Dataset, Connection and Data adapter objects
        dsUserActivity DS;
        OleDbConnection sqlConn;
        OleDbDataAdapter sqlDA;

        //Create a new databse connection and provide the connection string to the object
        sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);

        //Create a new Ole data adapter
        sqlDA = new OleDbDataAdapter("select * from tblUserActivity", sqlConn);

        //Create a new dataset
        DS = new dsUserActivity();

        //Populate the dataset with the results from the query. 
        sqlDA.Fill(DS.tblUserActivity);

        //Return the dataset
        return DS;
    }

    public static dsPersonnel GetPersonnel(string Database, string strSearch)
    {
        // creating OLEDB Dataset, OLEDB connection and Data adapter objects
        dsPersonnel DS;
        OleDbConnection sqlConn;
        OleDbDataAdapter sqlDA;

        //create a new connection and provide conenction string to the connection object
        sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);

        //A where clause for the sql query initially set to empty string
        string whereClause = "";

        //Checks if strSearch paramter has some value then set the where clause
        if (strSearch.Trim().Length > 0) whereClause = whereClause + " where LastName = '" + strSearch + "'";
           sqlDA = new OleDbDataAdapter("select * from tblPersonnel" + whereClause, sqlConn);
       
       // allocate new data set
        DS = new dsPersonnel();

        //Populate the dataset with the results from the query.
        sqlDA.Fill(DS.tblPersonnel);

        //Return the data set
        return DS;
    }


    //This function saves the user activity
    public static void SaveUserActivity(string Database, string FormAccessed)
    {
        //Create a new databse connection and provide the connection string to the object
        OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);
        conn.Open();
        OleDbCommand command = conn.CreateCommand();
        string strSQL;
        strSQL = "Insert into tblUserActivity (UserIP, FormAccessed) values ('" + GetIP4Address() + "', '" + FormAccessed + "')";
        command.CommandType = CommandType.Text;
        command.CommandText = strSQL;
        command.ExecuteNonQuery();
        conn.Close();
    }

    //This function gets the IP Address
    public static string GetIP4Address()
    {
        string IP4Address = string.Empty;
        foreach (IPAddress IPA in Dns.GetHostAddresses(HttpContext.Current.Request.UserHostAddress))
        {
            if (IPA.AddressFamily.ToString() == "InterNetwork")
            {
                IP4Address = IPA.ToString();
                break;
            }
        }
        if (IP4Address != string.Empty)
        {
            return IP4Address;
        }
        foreach (IPAddress IPA in Dns.GetHostAddresses(Dns.GetHostName()))
        {
            if (IPA.AddressFamily.ToString() == "InterNetwork")
            {
                IP4Address = IPA.ToString();
                break;
            }
        }
        return IP4Address;
    }
    // This function saves the personnel data
    public static bool SavePersonnel(string Database, string FirstName, string LastName, string PayRate, string StartDate, string EndDate)
    {
        bool recordSaved;

        try
        {
            //Creates new database connection
            OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);
            conn.Open();
            OleDbCommand command = conn.CreateCommand();
            string strSQL;

            //Creates the sql query and sets the values from the parameters (FirstName LastName, PayRate, StartDate and EndDate)
            strSQL = "Insert into tblPersonnel " + "(FirstName, LastName, PayRate, StartDate, EndDate) values ('" + FirstName + "', '" + LastName + "', '" + PayRate + "', '" + StartDate + "', '" + EndDate + "')";
            
            //Sets the CommandType text of the the command object
            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;

            //Executes the query
            command.ExecuteNonQuery();

            //Closes the database connection
            conn.Close();
            recordSaved = true;
        }
        catch (Exception ex)
        {
            recordSaved = false;
        }
        return recordSaved;
    }

}