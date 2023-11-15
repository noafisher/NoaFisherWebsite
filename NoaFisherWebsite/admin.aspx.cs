using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoaFisherWebsite
{
    public partial class admin : System.Web.UI.Page
    {

        public string usersTable;
        protected void Page_Load(object sender, EventArgs e)
        {
          if (Session["Noa"]== null)
            {
                Response.Redirect("login.aspx");
            }
          if (Request["btnDelete"]!=null)
            {
                string username= Request["user2delete"].ToString();
                string sqlDelete = "DELETE FROM Users WHERE Username='" + username + "'";
                MyAdoHelper.DoQuery("NoaFisherWebsite.accdb",sqlDelete);
            }

            string sqlALL = "SELECT * FROM Users";

            if (Request["Search"] != null)
            {
                if (Request["Search"] != "")
                {
                    if (Request["searchType"] == "Visit" || Request["searchType"] == "Age")
                    {
                        sqlALL += " WHERE " + Request["searchType"].ToString() + " = " + Request["user2search"];
                    }
                    else
                    {
                        sqlALL += " WHERE " + Request["searchType"].ToString() + " = '" + Request["user2search"] + "'";
                    }
                }
            }

            DataTable dtUsers = MyAdoHelper.ExecuteDataTable("NoaFisherWebsite.accdb", sqlALL);
            if (dtUsers.Rows.Count == 0)
            {
                usersTable = "<p> no users </p>";
            }

            else
            {
                usersTable += "<table cellspacing=8 align=center style=\"border:2px solid;border-collapse: collapse; font-size:20px; \" >";
                usersTable += "<tr style=\"border:2px solid;border-collapse: collapse;\">";
                usersTable += "<th style=\"border:2px solid;border-collapse: collapse;\"> שם משתמש.ת </th>";
                usersTable += "<th style=\"border:2px solid;border-collapse: collapse;\"> מגדר </th>";
                usersTable += "<th style=\"border:2px solid;border-collapse: collapse;\"> דואר אלקטרוני </th>";
                usersTable += "<th style=\"border:2px solid;border-collapse: collapse;\"> מס טלפון </th>";
                usersTable += "<th style=\"border:2px solid;border-collapse: collapse;\"> התראות </th>";
                usersTable += "<th style=\"border:2px solid;border-collapse: collapse;\"> ביקור בלונדון </th>";
                usersTable += "<th style=\"border:2px solid;border-collapse: collapse;\"> גיל </th>";
                usersTable += "</tr>";
                


                for (int i = 0; i < dtUsers.Rows.Count; i++)
                {
                    usersTable += "<tr>";
                    usersTable += "<td>" + dtUsers.Rows[i]["Username"] + "</td>";
                    usersTable += "<td>" + dtUsers.Rows[i]["Gender"] + "</td>";
                    usersTable += "<td>" + dtUsers.Rows[i]["Email"] + "</td>";
                    usersTable += "<td>" + dtUsers.Rows[i]["Phone"] + "</td>";
                    usersTable += "<td>" + dtUsers.Rows[i]["Notifications"] + "</td>";
                    usersTable += "<td>" + dtUsers.Rows[i]["Visit"] + "</td>";
                    usersTable += "<td>" + dtUsers.Rows[i]["Age"] + "</td>";
                    usersTable += "</tr>";

                }
                usersTable += "</table>";
            }
            }
        }
}