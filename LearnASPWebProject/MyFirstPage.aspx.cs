using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnASPWebProject
{
    public partial class MyFirstPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("I can also code in C#");
        }

        [Obsolete]
        protected void BTNLogin_Click(object sender, EventArgs e)
        {
            List<Check_Login_Result> user = null;
            DBReleaseManagementEntities DB = new DBReleaseManagementEntities();
            string username = TxtUsername.Text;
            string password = TxtPassword.Text;
            user = DB.Check_Login(username, password).ToList();
            if (user.Count > 0 && (user[0].role).Equals("Manager"))
                {

                //    //LBLMessage.Text = "valid user and the role is " + user[0].role;
                //    //HttpCookie httpCookie = new HttpCookie("username");
                //    //httpCookie.Value = TxtUsername.Text;
                //    //Response.Cookies.Add(httpCookie);
             //   FormsAuthentication.RedirectFromLoginPage(username, true);
             //Session.Add("username", TxtUsername.Text);
                Response.Redirect("AddProject.aspx");
            }


            else
                LBLMessage.Text = "Invalid username or password";
        }
    }
}