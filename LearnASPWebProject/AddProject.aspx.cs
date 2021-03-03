using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnASPWebProject
{
    public partial class AddProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string projectId = TProjectID.Text;
            string projectname = TProjectName.Text;
            using (DBReleaseManagementEntities DB=new DBReleaseManagementEntities())
            {
                DB.proc_InsertProject(projectId, projectname);
                DB.SaveChanges();
                TProjectID.Text = "";
                TProjectName.Text = "";
                LInsertMessage.Text = "Project Added";
            }

        }
    }
}