<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="NoaFisherWebsite.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form style="text-align:center;">
    <p>
        
    שם משתמש: <input type="text" name="username"><br />
    סיסמה: <input type="password" name="pass" /> <br />
    <input type="submit" name="submit" value="התחברות" /><br />
        
    </p>
</form>
    <p style="text-align:center;">
            <a href ="account.aspx" >ליצירת חשבון חדש  </a>
        <br />
        <%=errormsg %>
    </p>
    


</asp:Content>
