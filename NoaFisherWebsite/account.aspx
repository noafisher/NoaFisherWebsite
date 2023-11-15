<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="NoaFisherWebsite.account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function CheckForm()
        {
            if (document.regform.name.value == "")
            {
                alert('יש להזין שם');
              
                return false;
            }
            if (document.regform.gmail.value == "")
            {
                alert("צריך להזין דואר אלקטרוני");
                return false;
            }
            if (document.regform.phone.value == "")
            {

                alert("יש להזין מספר טלפון");
                return false;
            }
            if (document.regform.age.value == "")
            {
                alert("יש להזין גיל");
                return false;
            }
            if (document.regform.gender.value == "") {
                alert('יש לסמן מגדר');
                
                return false;
            }
            if (!document.regform.notifications[0].checked && !document.regform.notifications[1].checked && !document.regform.notifications[2].checked) {
                alert('עלייך לבחור התראות שאת.ה מעוניינ.ת לקבל')
                return false;
            }
            if (document.regform.londonvisit.selectedIndex=="0")
            {
                alert('עלייך לסמן אם ביקרת בלונדון')
                return false;
            }
            if (document.regform.pass1.value == "")
            {
                alert('יש להזין סיסמה');
                return false;
            }
            if (document.regform.pass2.value == "") {
                alert('יש לאמת סיסמה');
                return false;
            }

            if (document.regform.pass1.value != document.regform.pass2.value)
            {
                alert('על הסיסמאות להיות זהות');
                return false;
            }
            if (document.regform.pass1.value.length < 4 )
            {
                alert('הסיסמה צריכה להיות לפחות ארבעה תווים')
                document.getElementById("errorMessages").innerHTML = "הסיסמה צריכה להיות לפחות ארבעה תווים";
                return false;
            }
            
          
            return true; 

        }

    </script>
    <p id="errorMessages">
    </p>
    <form name="regform" method="post" onsubmit="return CheckForm()"; style="text-align:center;">
    <p>
  <br /> שם משתמש.ת <input type="text" name="name" /> 
  <br />  דוא"ל <input type="text" name="gmail" /> 
  <br /> מספר טלפון <input type="tel" name="phone" /> 
  <br /> גיל <input type="number" name="age" />  
  <br />   מגדר <br /> <input type="radio" name="gender" value="male" /> גבר
                <br /> <input type="radio" name="gender" value="female" /> אישה
                <br /> <input type="radio" name="gender" value="other" /> אחר
  <br /> אני מעוניין.ת לקבל... <br /> <input type="checkbox" name="notifications" value="mails" /> אימיילים בלבד
                               <br /> <input type="checkbox" name="notifications" value="message" /> הודעות בלבד  
                               <br /> <input type="checkbox" name="notifications" value="phone" /> שיחות טלפון בלבד   
  <br /> האם היית בלונדון? <select name="londonvisit">
      <option value="null" > -בחירה- </option>
      <option value="yes"> כן</option>
      <option value="no"> לא</option>

                           </select>      
  <br />  סיסמה <input type="password" name="pass1" />
  <br />  אימות סיסמה <input type="password" name="pass2" />
  <br />  יצירת חשבון:<input type="submit" name="send" value="יצירת חשבון" /> 
        

</p> 
        <p>
<%=error %>
            </p>
</form>
</asp:Content>
