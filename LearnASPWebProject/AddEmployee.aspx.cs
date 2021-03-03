using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnASPWebProject
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string employeeID = TEmployeeID.Text;
            string employeeName = TEmployeeName.Text;
            string employeerole = TEmployeeRole.Text;
            using(DBReleaseManagementEntities DB=new DBReleaseManagementEntities())
            {
                DB.proc_InsertEmployee(employeeID, employeeName, employeerole);
                DB.SaveChanges();
                TEmployeeID.Text = "";
                TEmployeeName.Text = "";
                TEmployeeRole.Text = "";
                Lmessage.Text = "Employee Added";
            }
        }
    }
}