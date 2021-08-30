<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Security-Policy" content="default-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self' data:"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="${url.resourcesPath}/quicktest.css"/>
  <title>Schnelltest Portal</title>
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
    <td>Schnelltest Portal</td>
  </tr>
</table>

<!-- BEGIN page specific content  -->
<div class="text-big" style="top: 210px;">Anmeldung</div>
<div class="text" style="top: 280px;">1. Um ihr Benutzerkonto zu aktivieren, öffnen Sie bitte ihre FreeOTP App und
  scannen Sie den unten angezeigten QR-Code
</div>
<img class="qr-code" style="top: 335px;" src="data:image/png;base64, ${totp.totpSecretQrCode}">
<div class="text" style="top: 540px;">2. Geben Sie das von der App erzeugte Einmal-Passwort ein</div>
<form id="kc-totp-settings-form" action="${url.loginAction}" method="post">
  <input class="input" style="top: 575px;" type="text" placeholder="Einmal-Passwort" name="totp" autocomplete="off"
         required>
  <input type="hidden" name="totpSecret" value="${totp.totpSecret}"/>
  <input class="input" style="top: 635px;" type="text" placeholder="OTP Gerät" value="${totp.userLabel}" name="userLabel" autocomplete="off" required/>
  <input class="button" style="top: 695px;" type="submit" value="Abschicken">
</form>
<#if message?? && message.type = 'error'>
  <div class="error" style="top: 695px;">Das von Ihnen eingegebene Einmal-Passwort ist nicht korrekt.<br>Bitte korrigieren Sie Ihre Eingabe.</div>
</#if>

<!-- END page specific content  -->
</body>
</html>
