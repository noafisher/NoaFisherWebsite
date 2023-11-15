using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NoaFisherWebsite
{
    public partial class profile : System.Web.UI.Page
    {
        public string errorMsg,Gender,Email,Phone,Notifications,Visit,Age,username;
        protected void Page_Load(object sender, EventArgs e)
        {
            //הגנה
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            //פרטי משתמש.ת 
            username= Session["user"].ToString();
            string sqlDetails = "SELECT * FROM Users WHERE Username='" + username + "' ";
            DataTable dt = MyAdoHelper.ExecuteDataTable("NoaFisherWebsite.accdb", sqlDetails);
            Gender= dt.Rows[0]["Gender"].ToString();
            Email= dt.Rows[0]["Email"].ToString();
            Phone= dt.Rows[0]["Phone"].ToString();
            Notifications= dt.Rows[0]["Notifications"].ToString();
            Visit= dt.Rows[0]["Visit"].ToString();
            Age= dt.Rows[0]["Age"].ToString();

            if (Request["updatePass"] != null)
            {
                string pass = Request["lastpass"].ToString();
                string newpass = Request["newpass"].ToString();
                string newpass2 = Request["newpass2"].ToString();
                string username = Session["user"].ToString();


                if (newpass != newpass2)
                    errorMsg = "הסיסאות החדשות לא זהות";
                
                else
                {
                    string sql = "SELECT * FROM Users WHERE Username='" + username + "' AND Pass1='" + pass + "'";
                    if (MyAdoHelper.IsExist("NoaFisherWebsite.accdb", sql))
                    {
                        if (newpass == newpass2)
                        {
                            string sqlUpdate = "UPDATE Users SET pass1='" + newpass + "' WHERE Username='" + username + "' ";
                            MyAdoHelper.DoQuery("NoaFisherWebsite.accdb", sqlUpdate);
                            errorMsg = "סיסמה עודכנה בהצלחה";
                        }
                        else
                            errorMsg = "הסיסמה החדשה צריכה להיות שונה מהסיסמה המקורית";
                    }

                    else
                    {
                        errorMsg = "סיסמה נוכחית לא תקינה";
                    }
                }
            }
       
        }
    }
}