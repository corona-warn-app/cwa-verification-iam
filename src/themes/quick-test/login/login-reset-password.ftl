<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="utf-8">
  <meta http-equiv="Content-Security-Policy"
        content="default-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self'"/>
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
<div class="text-big" style="top: 210px;">Passwort zurücksetzen</div>
<div class="text" style="top: 310px;">Geben Sie zum setzen eines neuen Passwortes unten Ihre E-Mail-Adresse ein.</div>
<form id="kc-reset-password-form" action="${url.loginAction}" method="post">
  <input type="text" id="username" name="username" placeholder="E-Mail" class="input" style="top: 350px;">
  <#if messagesPerField.existsError('username')>
    <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
      ${kcSanitize(messagesPerField.get('username'))?no_esc}
    </span>
  </#if>
  <input class="button" style="top: 410px;" type="submit" value="Abschicken">
  <div id="kc-form-options" class="text" style="top: 450px;" >
    <div class="${properties.kcFormOptionsWrapperClass!}">
      <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
    </div>
  </div>
</form>
<!-- END page specific content  -->
</body>
</html>
