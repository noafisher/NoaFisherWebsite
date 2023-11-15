<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="NoaFisherWebsite.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script type="text/javascript">
        
         function pic(num) {
             bigImg.src = "images/londonpic" + num + ".jpg";
             document.getElementById("num").innerHTML = num + "/6";
         }



     </script>
    
    <Table align="center">
         <tr>
             <td><img src="images/londonpic1.jpg" width="60" onclick="pic(1)"/></td>
             <td><img src="images/londonpic2.jpg" width="60"  onclick="pic(2)"/></td>
             <td><img src="images/londonpic3.jpg" width="60" onclick="pic(3)"/></td>
             <td><img src="images/londonpic4.jpg" width="60" onclick="pic(4)"/></td>
             <td><img src="images/londonpic5.jpg" width="60" onclick="pic(5)" /></td>
             <td><img src="images/londonpic6.jpg" width="60" onclick="pic(6)"/></td>

         </tr>
    <tr align="center">
        <td colspan="6"><img name="bigImg" src="images/londonpic1.jpg" width="500" height="300"/>
            <p id="num">1/6</p>
        </td>
    </tr>
     </Table>

</asp:Content>
