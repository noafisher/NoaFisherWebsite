using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoaFisherWebsite
{
    public partial class login : System.Web.UI.Page
    {
        public string errormsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["submit"] != null)
            {
                string user = Request["username"];
                string pass = Request["pass"];
                if ((user == "Noa") && (pass == "noaf11"))
                {
                    Session["Noa"] = "admin";
                    Response.Redirect("admin.aspx");

                }
                else
                {
                    string sql = "SELECT * FROM Users WHERE Username= '" + user + "' AND Pass1='" + pass + "' ";
                    if (MyAdoHelper.IsExist("NoaFisherWebsite.accdb", sql))
                    {
                        Session["user"] = user;
                        Response.Redirect("profile.aspx");
                    }

                    else
                    {
                        errormsg = "התחברות נכשלה";
                    }
                }
            }
               
        }
    }


}
