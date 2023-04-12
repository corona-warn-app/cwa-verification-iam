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
<div class="header">
  <table class="c19-logo">
    <tr>
      <td style="width: 1px;"><img src="${url.resourcesPath}/img/c-19_logo.png"></td>
      <td>Schnelltestportal</td>
    </tr>
  </table>
</div>

<!-- BEGIN page specific content  -->
<div class="text-big" style="top: 160px;">Anmeldung</div>
<div class="text-bold" style="top: 240px;">Hier können Sie sich für die Verwaltung der Patienten Schnelltests anmelden.
</div>
<div class="text" style="top: 290px;">Bitte melden Sie sich mit Ihrem Benutzernamen und Passwort an.
  Halten Sie das mobile Endgerät bereit, auf dem Sie die
  FreeOTP Authenticator App installiert haben.
</div>
<div class="text-bold" style="top: 370px">
  Bei technischen Problemen wenden Sie sich bitte Mo-So 6:00-20:00 an unsere Hotline unter +49 620 2274 3730
</div>
<form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
  <input class="input" style="top: 430px;" type="text" placeholder="Benutzername / Ihre Email-Adresse" name="username" required>
  <input class="input" style="top: 490px;" type="password" placeholder="Passwort" name="password" autocomplete="off" required>
  <input class="button" style="top: 550px;" type="submit" value="Anmelden">

</form>
<a class="text" style="top: 630px;" href="${url.loginResetCredentialsUrl}">Passwort neu setzen</a>

<#if message?? && message.type = 'error'>
  <div class="error" style="top: 630px;">Sie haben einen falschen Benutzernamen und/oder ein falsches Passwort eingegeben. Bitte versuchen sie es erneut oder wenden Sie sich an Ihren Administrator.</div>
</#if>
<!-- END page specific content -->
</body>
</html>
