using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnASPWebProject
{
    public partial class Assigning_Project_To_TL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string projectID = DropDownList1.SelectedValue;
            string projectname = DropDownList4.SelectedValue;
            string teamleadID = DropDownList2.SelectedValue;
            string teamleadName = DropDownList3.SelectedValue;
            using(DBReleaseManagementEntities DB=new DBReleaseManagementEntities())
            {
                DB.proc_Assign_pro_to_TL(projectID,projectname, teamleadID,teamleadName);
                DB.SaveChanges();
                LInsertMessage.Text = "Assigned successfully";
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}