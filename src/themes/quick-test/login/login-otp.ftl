<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Security-Policy" content="default-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self'"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="${url.resourcesPath}/quicktest.css"/>
  <title>Schnelltestportal</title>
  <link rel="icon" href="${url.resourcesPath}/img/c-19_logo.png">
</head>
<body>
<div class="footer">
  <p class="footer-font footer-imprint"><a href="${url.resourcesPath}/imprint.html" target="_blank">Impressum</a></p>
  <img class="footer-dp-logo" src="${url.resourcesPath}/img/data_protect.png">
  <p class="footer-font footer-dp"><a href="${url.resourcesPath}/dataprivacy.html" target="_blank">Datenschutz</a></p>
</div>
<table class="c19-logo">
  <tr>
    <td style="width: 1px;"><img src="${url.resourcesPath}/img/c-19_logo.png"></td>
    <td>Schnelltestportal</td>
  </tr>
</table>

<!-- BEGIN page specific content  -->
<div class="text-big" style="top: 210px;">Anmeldung</div>
<div class="text" style="top: 320px;">Öffnen Sie bitte Ihre FreeOTP App und geben Sie das von der App erzeugte Einmal-Passwort für den Benutzer ein
</div>
<form id="kc-otp-login-form" action="${url.loginAction}" method="post">
  <input class="input" style="top: 430px;" placeholder="Einmal-Passwort" name="otp" autocomplete="off" type="text" autofocus/>
  <input class="button" style="top: 490px;" type="submit" name="login" value="Abschicken">
</form>
<#if message?? && message.type = 'error'>
  <div class="error" style="top: 550px;">Das von Ihnen eingegebene Einmal-Passwort ist nicht korrekt.<br>Bitte korrigieren Sie Ihre Eingabe.</div>
</#if>
<!-- END page specific content  -->
</body>
</html>
