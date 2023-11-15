<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="NoaFisherWebsite.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h2>ניהול האתר:</h2>
    <p><b>טבלת משתמשים:</b> 

    <%=usersTable %>
        </p> 
          
    <p> <b>למחיקת משתמשים</b>:</p>
        <form method="post" >
            
            <input type="text" name="user2delete" />
            <input type="submit" name="btnDelete" value="מחיקה" /> 
        </form>

    <form method="post">
        <p style="font-size:30px; border: 3px black solid; opacity:90%; width:300px">
        <select name="searchType">
        <option value="Username"> שם משתמש</option>
        <option value="Gender"> מגדר</option>
        <option value="Email"> דוא"ל</option>
        <option value="Phone"> מספר טלפון</option>
        <option value="Visit">ביקור בלונדון</option>
        <option value="Age"> גיל</option>
        </select>
            <br />
        <input type="text" name="user2search" /> <br />
        <input type="submit" name="Search" value="חיפוש" />
            </p>
    </form>
</asp:Content>  
