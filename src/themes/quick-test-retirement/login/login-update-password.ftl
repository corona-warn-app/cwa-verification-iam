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
<div class="text" style="top: 310px;">Bitte wählen Sie ein neues Passwort</div>
<form id="kc-passwd-update-form" action="${url.loginAction}" method="post">
  <input type="text" name="username" value="${username}" autocomplete="username" readonly="readonly"
         style="display:none;"/>
  <input class="input" style="top: 360px;" type="password" id="pw1" placeholder="Passwort" name="password-new" required>
  <input class="input" style="top: 420px;" type="password" id="pw2" placeholder="Passwort bestätigen" name="password-confirm"
         required>
  <input class="button" style="top: 480px;" type="submit" value="Abschicken">
</form>
<#if message?? && message.type = 'error'>
  <div class="error" style="top: 540px;">Die eingegebenen Passwörter stimmen nicht überein oder entsprechen nicht den Sicherheitsrichtlinien.
    <span style="font-family: Telegrotesk Next Regular;">
		<br><br>Ihr Passwort muss mindestens 8 Zeichen lang sein und aus mindestens drei der folgenden Zeichenkategorien bestehen:<br>
		<br>&nbsp;&nbsp; • Kleinbuchstaben
		<br>&nbsp;&nbsp; • Grosbuchstaben
		<br>&nbsp;&nbsp; • Ziffern
		<br>&nbsp;&nbsp; • Sonderzeichen
	</span>
	<br><br>Bitte korrigieren Sie Ihre Eingabe.
  </div>
</#if>
<#if message?? && message.type = 'success'>
  <div class="success" style="top: 540px;">
  Das Passwort wurde erfolgreich geändert. Sie können diese Seite jetzt schließen.
  </div>
</#if>
<!-- END page specific content  -->
</body>
</html>
