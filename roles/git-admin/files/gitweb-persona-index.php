<!DOCTYPE html>
<html>
<head>
<script src="https://login.persona.org/include.js" type="text/javascript"></script>
<title>SuttaCentral Git Repository Authentication</title>
<style>
#notice {
  margin: 100px auto 0 auto;
  width: 300px; 
  text-align: center;
  font-size: 40px;
  -webkit-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
}
#notice.go {
  -webkit-transform: scale(2,2);
  transform: scale(2,2);
}
</style>
</head>
<body>
<p id="notice">SuttaCentral Git Repository<br>
<a href="#" onclick="doLogin(); return false">
<img width="95" height="25" src="https://developer.mozilla.org/files/3969/plain_sign_in_blue.png"></a></p>
<form method="GET" action="/login/submit" id="loginform">
<input type="hidden" name="assertion" id="assertion">
<input type="hidden" name="returnto" id="returnto" 
   value="<?php if (isset($_SERVER["REDIRECT_URL"])) echo $_SERVER["REDIRECT_URL"]; else echo "/"; ?>">
</form>
<script>
function doLogin()
{
      navigator.id.getVerifiedEmail(function(assertion) {
              document.getElementById("assertion").value = assertion;
              document.getElementById("loginform").submit();
      });
}
window.onload = function() {
  document.getElementById("notice").className = 'go';
}
</script></body></html>
