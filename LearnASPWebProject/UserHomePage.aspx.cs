using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearnASPWebProject
{
    public partial class UserHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblwelcomemsg.Text = Request.Cookies["username"].Value;
            if (Session["username"] != null)
            {
                lblwelcomemsg.Text = Session["username"].ToString();
            }
            else
                Response.Redirect("MyFirstPage.aspx");
        }
    }
}