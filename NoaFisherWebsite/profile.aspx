<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="NoaFisherWebsite.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
היי, הגעת לדף הפרופיל! 
        <br /> 
<b><u> פרטים אישיים: </u> </b>
<br />מגדר:<%=Gender%>
<br /> דוא"ל: <%=Email %>
        <br /> מספר טלפון: <%=Phone %>
        <br /> בחרת לקבל: <%=Notifications %>
        <br /> האם היית בלונדון: <%=Visit %>
        <br /> גיל: <%=Age %>
 <br /> <b><u>עדכון סיסמה:</u></b>           <p />
   <form style="font-family:Calibri;font-size:20px;" method="post">
    סיסמה נוכחית: <input type="password" name="lastpass" /> <br /> 
    סיסמה חדשה: <input type="password" name="newpass" /> <br />
    אימות סיסמה: <input type="password" name="newpass2" /> <br /> 
    <input type="submit" name="updatePass" value="עדכון סיסמה"  /> <br />
        
   </form>
   
    <p>
        <%=errorMsg%>
    </p>
</asp:Content>
