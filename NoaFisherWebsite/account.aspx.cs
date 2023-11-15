using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoaFisherWebsite
{
    public partial class account : System.Web.UI.Page
    {
        public string error; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["send"]!= null)
            {
                string username= Request["name"].ToString();
                string sql = "SELECT * FROM Users WHERE Username='" + username + "' ";
                if (MyAdoHelper.IsExist("NoaFisherWebsite.accdb", sql))
                {
                    error = "שם המשתמש.ת כבר קיים, אנא בחר.י שם אחר";
                }
                else
                {
                    
                    string gmail = Request["gmail"].ToString();
                    string phone = Request["phone"].ToString();
                    string age = Request["age"].ToString();
                    string gender = Request["gender"].ToString();
                    string notifications = Request["notifications"].ToString();
                    string visit = Request["londonvisit"].ToString();
                    string pswd = Request["pass1"].ToString();

                    string sql2 = "INSERT INTO Users VALUES ('"+username+"','"+pswd+"', '"+gender+"', '"+gmail+"','"+phone+"', '"+notifications+"',"+visit+", "+age+")";
                    MyAdoHelper.DoQuery("NoaFisherWebsite.accdb", sql2);
                    Session["user"] = username;
                    Response.Redirect("profile.aspx");

                }
            }

        }
    }
}