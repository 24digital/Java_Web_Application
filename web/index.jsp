<%--
  Created by IntelliJ IDEA.
  User: Marion
  Date: 6/18/2014
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>BinaryGeekInfo</title>
 <script>   function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
    }
 function getCookie(cname) {
     var name = cname + "=";
     var ca = document.cookie.split(';');
     for(var i=0; i<ca.length; i++) {
         var c = ca[i];
         while (c.charAt(0)==' ') c = c.substring(1);
         if (c.indexOf(name) != -1) return c.substring(name.length,c.length);
     }
     return "";
 }
 function checkCookie() {
     var username=getCookie("username");
     if (username!="") {
         alert("Welcome again " + username);
     }else{
         username = prompt("Please enter your name:", "");
         if (username != "" && username != null) {
             setCookie("username", username, 365);
         }
     }
 }
 </script>

</head>
<body>

<form method="POST"
      action="Go.do">
    <p> Select beer</p>
   Beers:
    <select name="color" size="2"  >
        <option value="Budweiser">Budweiser</option>
        <option value="Coors">Coors</option>
        <option value="Happy Yum">Happy Yum</option>
    </select>
    <br><br>
    <center>
        <input type="submit" onclick="alert()">
    </center>
</form>
</body>
</html>