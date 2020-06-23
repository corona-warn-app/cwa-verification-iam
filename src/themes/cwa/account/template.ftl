<#macro mainLayout active bodyClass>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="${url.resourcesPath}/img/c-19_logo.png">
    <link rel="stylesheet" type="text/css" href="${url.resourcesPath}/password.css">
    <title>${msg("changePasswordHtmlTitle")}</title>
  </head>
  <body>
    <div class="header">
      <img class="header-logo" src="${url.resourcesPath}/img/telekom_web_logo.png">
      <img class="header-text" src="${url.resourcesPath}/img/life_is_for_sharing.png">
    </div>

    <div class="footer">
      <p class="footer-font footer-copyright">© Telekom Deutschland GmbH</p>
      <p class="footer-font footer-imprint">Impressum</p>
      <img class="footer-dp-logo" src="${url.resourcesPath}/img/data_protect.png">
      <p class="footer-font footer-dp">Datenschutz</p>
    </div>

    <table class="c19-logo">
      <tr>
        <td style="width: 1px;"><img src="${url.resourcesPath}/img/c-19_logo.png"></td>
        <td>TeleTAN Portal</td>
      </tr>
    </table>
    <div class="col-sm-9 content-area">
      <#if message?has_content>
      <div class="alert alert-${message.type}">
        <#if message.type=='success' ><div class="success" style="top: 610px;"><span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span></div>></#if>
        <#if message.type=='error' ><div class="error" style="top: 610px;"><span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span></div></#if>
      </div>
      </#if>
      <#nested "content">
    </div>
  </body>
</html>
</#macro>
